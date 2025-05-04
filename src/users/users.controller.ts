import { Body, Controller, Get, Post, Request } from '@nestjs/common';
import { CreateUserDto } from './create-user-dto';
import { LoginUserDTO } from './login-user-dto';
import { Public } from './public.decorator';
import { UsersService } from './users.service';

// in parenthesis, is the name of the base url for this controller
@Controller('users')
export class UsersController {
  constructor(private userService: UsersService) {}

  @Public()
  @Post('/signup') // in parenthesis, is the name of the route
  async createUser(
    @Body()
    createUserDTO: CreateUserDto,
  ) {
    return await this.userService.signUp(createUserDTO);
  }

  @Public()
  @Post('/login')
  async loginUser(
    @Body()
    loginUserDTO: LoginUserDTO,
  ) {
    return await this.userService.login(loginUserDTO);
  }

  @Get('/profile')
  getProfile(@Request() req) {
    // eslint-disable-next-line @typescript-eslint/no-unsafe-return
    return req.user;
  }
}
