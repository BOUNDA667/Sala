import { SetMetadata } from '@nestjs/common';

// Définir la clé de métadonnée qui sera utilisée pour marquer les routes publiques
export const IS_PUBLIC_KEY = 'isPublic';

// Le décorateur @Public marque une route comme accessible sans authentification
export const Public = () => SetMetadata(IS_PUBLIC_KEY, true);
