import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { TodosModule } from './todos/todos.module';
import { SubscriptionsModule } from './subscriptions/subscriptions.module';
import { TagsModule } from './tags/tags.module';
import { CommentsModule } from './comments/comments.module';
import { NotificationsModule } from './notifications/notifications.module';
import { CommentsController } from './comments/comments.controller';
import { CategoriesModule } from './categories/categories.module';

@Module({
  imports: [
    UsersModule,
    TodosModule,
    SubscriptionsModule,
    TagsModule,
    CommentsModule,
    NotificationsModule,
    CategoriesModule,
  ],
  controllers: [AppController, CommentsController],
  providers: [AppService],
})
export class AppModule {}
