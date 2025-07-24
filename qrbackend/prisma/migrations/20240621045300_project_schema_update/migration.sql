/*
  Warnings:

  - You are about to drop the column `serice` on the `Project` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Project" DROP COLUMN "serice",
ADD COLUMN     "service" TEXT;
