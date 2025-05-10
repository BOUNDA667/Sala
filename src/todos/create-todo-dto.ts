// create-todo.dto.ts

import {
  IsBoolean,
  IsDateString,
  IsEnum,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsArray,
  ArrayNotEmpty,
} from 'class-validator';
import { Type } from 'class-transformer';
import { Priority } from './priority.enum';

export class CreateTodoDto {
  @IsString()
  @IsNotEmpty()
  title: string;

  @IsString()
  @IsOptional()
  description?: string;

  @IsBoolean()
  @IsOptional()
  completed?: boolean;

  @IsEnum(Priority)
  priority: Priority;

  @IsInt()
  @Type(() => Number)
  userId: number;

  @IsOptional()
  @IsDateString()
  dueDate?: string;

  @IsOptional()
  @IsDateString()
  reminderDate?: string;

  @IsOptional()
  @IsBoolean()
  repeatAfterCompletion?: boolean;

  @IsOptional()
  dueTime?: string; // Format ISO 8601 ou 'HH:mm:ss'

  @IsOptional()
  @IsArray()
  @ArrayNotEmpty()
  @IsInt({ each: true })
  @Type(() => Number)
  tagsIds?: number[];

  @IsOptional()
  @IsArray()
  @ArrayNotEmpty()
  @IsInt({ each: true })
  @Type(() => Number)
  commentsIds?: number[];

  @IsInt()
  @Type(() => Number)
  categoryId: number;
}
