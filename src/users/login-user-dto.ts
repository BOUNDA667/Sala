import { IsEmail, IsNotEmpty, MinLength } from 'class-validator';

export class LoginUserDTO {
  //   @IsNotEmpty()
  //   username: string;

  @IsEmail()
  @IsNotEmpty()
  email: string;

  @IsNotEmpty()
  @MinLength(6)
  password: string;

  //   @IsOptional()
  //   phone?: string;
}
