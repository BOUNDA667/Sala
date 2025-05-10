export class Category {
  id: number;
  name: string;
  createdAt: Date;
  updatedAt: Date;
  image?: string;
  color?: string;
  icon?: string;
  description?: string;
  isCreatedByUser: boolean;
}
