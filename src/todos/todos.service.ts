import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';
import { CreateTodoDto } from './create-todo-dto';
import { ToDo } from './todo';

@Injectable()
export class TodosService {
  constructor(private prisma: PrismaService) {}

  async createToDo(payload: CreateTodoDto): Promise<ToDo> {
    try {
      const user = await this.prisma.user.findUnique({
        where: { id: payload.userId },
      });

      if (!user) {
        throw new HttpException(
          {
            status: HttpStatus.NOT_FOUND,
            error: 'Utilisateur non trouvé.',
          },
          HttpStatus.NOT_FOUND,
        );
      }

      const todo: ToDo = (await this.prisma.todo.create({
        data: {
          title: payload.title,
          description: payload.description,
          completed: payload.completed ?? false,
          priority: payload.priority,
          dueDate: payload.dueDate ? new Date(payload.dueDate) : undefined,
          reminderDate: payload.reminderDate
            ? new Date(payload.reminderDate)
            : undefined,
          categoryId: payload.categoryId,
          // Convertir la chaîne 'HH:mm' (ou 'HH:mm:ss') en Date (01/01/1970 + heure)
          dueTime: payload.dueTime,
          repeatAfterCompletion: payload.repeatAfterCompletion,
          userId: payload.userId,
          // si tu veux gérer des tags/comments
          tags: payload.tagsIds?.length
            ? { connect: payload.tagsIds.map((id) => ({ id })) }
            : undefined,
          comments: payload.commentsIds?.length
            ? { connect: payload.commentsIds.map((id) => ({ id })) }
            : undefined,
        },
      })) as unknown as ToDo;

      return todo;
    } catch (error: unknown) {
      const errorMessage =
        error instanceof Error ? error.message : 'Unknown error';
      throw new HttpException(
        {
          status: HttpStatus.INTERNAL_SERVER_ERROR,
          error: 'Erreur lors de la création de la tâche.',
          details: errorMessage,
        },
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
  }

  async getAllToDo(): Promise<ToDo[]> {
    const todos: ToDo[] =
      (await this.prisma.todo.findMany()) as unknown as ToDo[];
    return todos;
  }

  async getToDoById(id: number): Promise<ToDo | null> {
    const todo: ToDo | null = (await this.prisma.todo.findUnique({
      where: { id: id },
    })) as unknown as ToDo;
    if (!todo) {
      throw new HttpException(
        {
          status: HttpStatus.NOT_FOUND,
          error: 'Todo not found',
        },
        HttpStatus.BAD_REQUEST,
      );
    }
    return todo;
  }

  async updateToDo(id: number, payload: CreateTodoDto) {
    const todo: ToDo | null = (await this.prisma.todo.update({
      where: { id: id },
      data: payload,
    })) as unknown as ToDo;

    if (!todo) {
      throw new HttpException(
        {
          status: HttpStatus.NOT_FOUND,
          error: 'Todo not found',
        },
        HttpStatus.BAD_REQUEST,
      );
    }
    return todo;
  }

  async deleteToDo(id: number) {
    const todo: ToDo | null = (await this.prisma.todo.delete({
      where: { id: id },
    })) as unknown as ToDo;

    if (!todo) {
      throw new HttpException(
        {
          status: HttpStatus.NOT_FOUND,
          error: 'Todo not found',
        },
        HttpStatus.BAD_REQUEST,
      );
    }
    return todo;
  }

  async getAllToDoByUserId(userId: number): Promise<ToDo[]> {
    const todos: ToDo[] = (await this.prisma.todo.findMany({
      where: { userId: userId },
      include: {
        category: true,
      },
    })) as unknown as ToDo[];
    return todos;
  }
}
