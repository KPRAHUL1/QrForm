/*
  Warnings:

  - You are about to drop the column `photoUrlPath` on the `Testimonials` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Testimonials" DROP COLUMN "photoUrlPath",
ADD COLUMN     "companyLocation" TEXT,
ADD COLUMN     "imagePath" TEXT;
