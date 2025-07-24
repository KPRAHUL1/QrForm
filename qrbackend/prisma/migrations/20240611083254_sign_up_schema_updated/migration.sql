-- AlterTable
ALTER TABLE "User" ADD COLUMN     "remark" TEXT NOT NULL DEFAULT 'pending',
ADD COLUMN     "status" TEXT NOT NULL DEFAULT 'pending';
