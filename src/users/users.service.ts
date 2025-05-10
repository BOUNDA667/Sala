/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { HttpException, HttpStatus, Injectable, Logger } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import * as bcrypt from 'bcrypt';
import { PrismaService } from 'src/prisma.service';
import { CreateUserDto } from './create-user-dto';
import { LoginUserDTO } from './login-user-dto';
import { AuthResponse } from './user';

@Injectable()
export class UsersService {
  //Instancie un Logger avec le nom de ton service
  private readonly logger = new Logger(UsersService.name);

  constructor(
    private prisma: PrismaService,
    private jwtService: JwtService,
  ) {}

  /// Authentification de l'utilisateur
  async login(
    payload: LoginUserDTO,
  ): Promise<{ user: AuthResponse; token: string }> {
    this.logger.log(`Tentative de login pour l'email: ${payload.email}`);

    // Recherche de l'utilisateur par email
    const user = await this.prisma.user.findUnique({
      where: { email: payload.email },
    });

    if (!user) {
      throw new HttpException(
        {
          status: HttpStatus.UNAUTHORIZED,
          error: 'Email ou mot de passe incorrect.',
        },
        HttpStatus.UNAUTHORIZED,
      );
    }

    // Vérification du mot de passe
    const isPasswordValid = await this.comparePassword(
      payload.password,
      user.password,
    );

    if (!isPasswordValid) {
      throw new HttpException(
        {
          status: HttpStatus.UNAUTHORIZED,
          error: 'Email ou mot de passe incorrect.',
        },
        HttpStatus.UNAUTHORIZED,
      );
    }

    // Génération du token JWT avec une durée de validité de 1 jour
    const token = await this.jwtService.signAsync(
      {
        id: user.id,
        email: user.email,
      },
      { expiresIn: '1d' },
    );

    // Suppression du mot de passe de l'objet utilisateur pour ne pas le retourner
    const { password, ...userWithoutPassword } = user;

    return { user: userWithoutPassword as AuthResponse, token };
  }

  //// Création d'un nouvel utilisateur
  async signUp(payload: CreateUserDto): Promise<AuthResponse> {
    try {
      // Hash du mot de passe avant insertion
      const hashedPassword = await this.hashPassword(payload.password);
      payload.password = hashedPassword;

      // Création de l'utilisateur
      const user: AuthResponse = (await this.prisma.user.create({
        data: payload,
        select: {
          id: true,
          firstName: true,
          lastName: true,
          username: true,
          email: true,
          createdAt: true,
          updatedAt: true,
          blocked: true,
          phone: true,
          emailVerified: true,
          phoneVerified: true,
        },
      })) as unknown as AuthResponse;

      return user;
    } catch (error: any) {
      // Vérification de l'erreur Prisma
      if (error.code === 'P2002' && error.meta?.target) {
        const target = error.meta.target as string[];

        if (target.includes('email')) {
          throw new HttpException(
            {
              status: HttpStatus.BAD_REQUEST,
              error: 'Cet email est déjà utilisé.',
            },
            HttpStatus.BAD_REQUEST,
          );
        }

        if (target.includes('username')) {
          throw new HttpException(
            {
              status: HttpStatus.BAD_REQUEST,
              error: "Ce nom d'utilisateur est déjà pris.",
            },
            HttpStatus.BAD_REQUEST,
          );
        }
      }

      // Autre erreur Prisma ou interne
      throw new HttpException(
        {
          status: HttpStatus.INTERNAL_SERVER_ERROR,
          error: 'Une erreur est survenue.',
        },
        HttpStatus.INTERNAL_SERVER_ERROR,
        { cause: error },
      );
    }
  }

  async hashPassword(
    password: string,
    saltOrRounds: number = 10,
  ): Promise<string> {
    return await bcrypt.hash(password, saltOrRounds);
  }

  async comparePassword(
    password: string,
    hashedPassword: string,
  ): Promise<boolean> {
    return await bcrypt.compare(password, hashedPassword);
  }
}
