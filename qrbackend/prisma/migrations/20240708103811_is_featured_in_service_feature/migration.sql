/*
  Warnings:

  - You are about to drop the column `isFeatuered` on the `serviceFeatures` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "serviceFeatures" DROP COLUMN "isFeatuered",
ADD COLUMN     "isFeatured" BOOLEAN NOT NULL DEFAULT false;
