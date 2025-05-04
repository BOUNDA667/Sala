import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { CreateTodoDto } from './create-todo-dto';
import { TodosService } from './todos.service';

@Controller('todos')
export class TodosController {
  constructor(private todosService: TodosService) {}

  @Post('/create')
  async createToDo(
    @Body()
    payload: CreateTodoDto,
  ) {
    return await this.todosService.createToDo(payload);
  }

  @Get('/get')
  async getAllToDo() {
    return await this.todosService.getAllToDo();
  }

  @Get('/get/:id')
  async getToDoById(@Param('id') id: number) {
    return await this.todosService.getToDoById(id);
  }

  @Patch('/update/:id')
  async updateToDo(@Param('id') id: number, @Body() payload: CreateTodoDto) {
    return await this.todosService.updateToDo(id, payload);
  }

  @Delete('/delete/:id')
  async deleteToDo(@Param('id') id: number) {
    return await this.todosService.deleteToDo(id);
  }

  @Get('/get/user/:id')
  async getToDoByUserId(@Param('id') id: number) {
    return await this.todosService.getAllToDoByUserId(id);
  }
}
