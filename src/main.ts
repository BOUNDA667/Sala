import { ValidationPipe } from '@nestjs/common';
import { NestFactory, Reflector } from '@nestjs/core';
import { JwtService } from '@nestjs/jwt';
import { AppModule } from './app.module';
import { AuthGuard } from './users/auth.guard';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      transform: true,
      forbidNonWhitelisted: true,
      transformOptions: {
        enableImplicitConversion: true,
      },
    }),
  );
  // Récupère l'instance du Reflector
  const reflector = app.get(Reflector);
  // Appliquer le AuthGuard globalement
  app.useGlobalGuards(new AuthGuard(app.get(JwtService), reflector));
  await app.listen(process.env.PORT ?? 3000);
}

void bootstrap();
