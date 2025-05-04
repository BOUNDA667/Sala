import { Priority } from './priority.enum';

export interface ToDo {
  id: number;
  title: string;
  description?: string;
  completed: boolean;
  priority: Priority;
  dueDate?: Date;
  reminderDate?: Date;
  createdAt: Date;
  updatedAt: Date;
  userId: number;
}
