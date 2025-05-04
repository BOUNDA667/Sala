/* eslint-disable @typescript-eslint/no-unsafe-assignment */
// Importation des modules nécessaires depuis NestJS
import {
  CanActivate, // Interface pour créer un guard
  ExecutionContext, // Fournit le contexte d'exécution de la requête
  Injectable, // Décorateur pour marquer la classe comme injectable (pour l'injection de dépendances)
  UnauthorizedException, // Exception lancée en cas d'accès non autorisé
} from '@nestjs/common';
// Importation du service JWT pour vérifier les tokens
import { JwtService } from '@nestjs/jwt';
// Importation du type Request depuis express pour typer les requêtes HTTP
import { Request } from 'express';
// Importation des constantes, notamment la clé secrète JWT
import { Reflector } from '@nestjs/core';
import { jwtConstants } from './constants';
import { IS_PUBLIC_KEY } from './public.decorator';

@Injectable() // Indique que cette classe peut être injectée dans d'autres classes via le système d'injection de dépendances de NestJS
export class AuthGuard implements CanActivate {
  // La classe implémente l'interface CanActivate pour définir une logique d'activation d'une route
  constructor(
    private jwtService: JwtService,
    private readonly reflector: Reflector, // Injection du reflector pour lire les métadonnées
  ) {} // Injection du service JwtService dans le constructeur

  // Méthode principale du guard qui détermine si la requête peut être activée
  async canActivate(context: ExecutionContext): Promise<boolean> {
    // Vérifier si la route ou le contrôleur est marqué comme public
    const isPublic = this.reflector.getAllAndOverride<boolean>(IS_PUBLIC_KEY, [
      context.getHandler(),
      context.getClass(),
    ]);

    if (isPublic) {
      // Si la route est publique, on autorise l'accès sans vérifier le token

      return true;
    }

    // Récupération de l'objet Request à partir du contexte d'exécution HTTP
    const request: Request = context.switchToHttp().getRequest();
    // Extraction du token d'authentification depuis les en-têtes de la requête
    const token = this.extractTokenFromHeader(request);
    // Si aucun token n'est présent, on lance une exception UnauthorizedException
    if (!token) {
      throw new UnauthorizedException();
    }
    try {
      // Vérification asynchrone du token via le service JWT en utilisant la clé secrète définie dans jwtConstants
      const payload = await this.jwtService.verifyAsync(token, {
        secret: jwtConstants.secret,
      });
      // 💡 Nous assignons le payload au champ 'user' de l'objet Request
      // afin de pouvoir accéder à ces informations dans les gestionnaires de routes
      request['user'] = payload;
    } catch {
      // En cas d'erreur lors de la vérification (token invalide, expiré, etc.), on lance une exception UnauthorizedException
      throw new UnauthorizedException();
    }
    // Si tout est correct, le guard autorise l'accès en retournant true
    return true;
  }

  // Méthode privée qui extrait le token d'authentification de l'en-tête 'Authorization'
  private extractTokenFromHeader(request: Request): string | undefined {
    // On récupère l'en-tête 'authorization', on le divise par espace et on déstructure le tableau en type et token
    const [type, token] = request.headers.authorization?.split(' ') ?? [];
    // Si le type est 'Bearer', on retourne le token, sinon undefined
    return type === 'Bearer' ? token : undefined;
  }
}
