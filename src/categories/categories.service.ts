import { Injectable, Logger, NotFoundException } from '@nestjs/common';
import { Category } from '@prisma/client';
import { PrismaService } from 'src/prisma.service';
import { CreateCategoryDto } from './dto/create-category.dto';
import { UpdateCategoryDto } from './dto/update-category.dto';

@Injectable()
export class CategoriesService {
  constructor(private readonly prisma: PrismaService) {}
  //Instancie un Logger avec le nom de ton service
  private readonly logger = new Logger(CategoriesService.name);

  async findAll() {
    if (!this.prisma.category) {
      throw new Error('Prisma category client is not initialized');
    }
    return await this.prisma.category.findMany();
  }

  async getDefaultCategories() {
    const categories: Category[] = await this.prisma.category.findMany({
      where: { userId: null },
    });
    this.logger.log(
      'Fetching default categories...' + categories.length + 'found',
    );
    return categories;
  }

  async findOne(id: number) {
    const category = await this.prisma.category.findUnique({ where: { id } });
    if (!category) {
      throw new NotFoundException(`Category with id ${id} not found`);
    }
    return category;
  }

  async create(dto: CreateCategoryDto) {
    return this.prisma.category.create({ data: dto });
  }

  async update(id: number, dto: UpdateCategoryDto) {
    await this.findOne(id);
    return this.prisma.category.update({
      where: { id },
      data: dto,
    });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.category.delete({ where: { id } });
  }

  async getUserCategories(userId: number) {
    const categories: Category[] = await this.prisma.category.findMany({
      where: { userId: userId },
    });

    this.logger.log(
      'Fetching user categories...' + categories.length + 'found',
    );

    return categories;
  }
}
