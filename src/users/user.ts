export interface AuthResponse {
  id: number;
  firstName: string;
  lastName: string | null;
  username: string | null;
  email: string;
  createdAt: Date;
  updatedAt: Date;
  emailVerified: boolean;
  phone: string | null;
  phoneVerified: boolean;
  blocked: boolean;
}
