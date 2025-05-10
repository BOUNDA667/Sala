// prisma/seed.ts

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

const defaultCategories = [
  {
    name: 'Travail',
    color: '#2196F3',
    icon: 'work', // correspond à AppIcon.work
    description: '💼',
    isCreatedByUser: false,
  },
  {
    name: 'Projets',
    color: '#673AB7',
    icon: 'project',
    description: '📁',
    isCreatedByUser: false,
  },
  {
    name: 'Maison',
    color: '#FF9800',
    icon: 'home',
    description: '🏠',
    isCreatedByUser: false,
  },
  {
    name: 'Santé',
    color: '#E91E63',
    icon: 'health',
    description: '❤️',
    isCreatedByUser: false,
  },
  {
    name: 'Bien-être',
    color: '#4CAF50',
    icon: 'wellbeing',
    description: '🧘',
    isCreatedByUser: false,
  },
  {
    name: 'Forme',
    color: '#FF5722',
    icon: 'fitness',
    description: '🏋️',
    isCreatedByUser: false,
  },
  {
    name: 'Apprentissage',
    color: '#3F51B5',
    icon: 'learning',
    description: '📚',
    isCreatedByUser: false,
  },
  {
    name: 'Finances',
    color: '#009688',
    icon: 'finance',
    description: '💰',
    isCreatedByUser: false,
  },
  {
    name: 'Courses',
    color: '#F44336',
    icon: 'shopping',
    description: '🛒',
    isCreatedByUser: false,
  },
  {
    name: 'Famille',
    color: '#F06292',
    icon: 'family',
    description: '👪',
    isCreatedByUser: false,
  },
  {
    name: 'Loisirs',
    color: '#00BCD4',
    icon: 'leisure',
    description: '🎮',
    isCreatedByUser: false,
  },
  {
    name: 'Autres',
    color: '#9E9E9E',
    icon: 'other',
    description: '❓',
    isCreatedByUser: false,
  },
];

async function main() {
  for (const cat of defaultCategories) {
    await prisma.category.upsert({
      where: { name: cat.name },
      update: {},
      create: cat,
    });
  }
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(() => {
    prisma.$disconnect();
  });
