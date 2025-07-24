/*
  Warnings:

  - You are about to drop the column `author` on the `Post` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Post" DROP COLUMN "author",
ADD COLUMN     "authorId" UUID;

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "User"("_id") ON DELETE SET NULL ON UPDATE CASCADE;
