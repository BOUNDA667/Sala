-- CreateIndex
CREATE INDEX "Category_name_idx" ON "Category"("name");

-- CreateIndex
CREATE INDEX "Comment_userId_idx" ON "Comment"("userId");

-- CreateIndex
CREATE INDEX "Comment_todoId_idx" ON "Comment"("todoId");

-- CreateIndex
CREATE INDEX "Notification_userId_idx" ON "Notification"("userId");

-- CreateIndex
CREATE INDEX "Todo_userId_idx" ON "Todo"("userId");

-- CreateIndex
CREATE INDEX "Todo_categoryId_idx" ON "Todo"("categoryId");

-- CreateIndex
CREATE INDEX "Todo_createdAt_idx" ON "Todo"("createdAt");

-- CreateIndex
CREATE INDEX "Todo_userId_completed_idx" ON "Todo"("userId", "completed");

-- CreateIndex
CREATE INDEX "User_subscriptionId_idx" ON "User"("subscriptionId");
