/*
  Warnings:

  - You are about to drop the column `awsExperience` on the `Registration` table. All the data in the column will be lost.
  - You are about to drop the column `linkedin` on the `Registration` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Registration_email_key";

-- AlterTable
ALTER TABLE "Registration" DROP COLUMN "awsExperience",
DROP COLUMN "linkedin",
ADD COLUMN     "extraFields" JSONB;
