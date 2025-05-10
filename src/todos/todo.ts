// todo.interface.ts

import { Category } from 'src/categories/entities/category.entity';
import { Priority } from './priority.enum';

export interface ToDo {
  id: number;
  title: string;
  description?: string;
  completed: boolean;
  priority: Priority;
  dueDate?: Date;
  reminderDate?: Date;
  repeatAfterCompletion?: boolean;
  dueTime?: string;
  createdAt: Date;
  updatedAt: Date;
  userId: number;
  categoryId?: number;
  category?: Category;
  tagsIds?: number[];
}
