/*
  Warnings:

  - Added the required column `name` to the `serviceHighlights` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Testimonials" ADD COLUMN     "photoUrlPath" TEXT;

-- AlterTable
ALTER TABLE "serviceHighlights" ADD COLUMN     "description" TEXT,
ADD COLUMN     "icon" TEXT,
ADD COLUMN     "imagePath" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "name" TEXT NOT NULL;
