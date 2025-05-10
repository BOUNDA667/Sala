-- AlterTable
ALTER TABLE "Todo" ADD COLUMN     "dueTime" TIMESTAMP(3),
ADD COLUMN     "repeatAfterCompletion" BOOLEAN DEFAULT false;
