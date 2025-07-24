/*
  Warnings:

  - You are about to drop the `_ClientsToServices` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_ClientsToServices" DROP CONSTRAINT "_ClientsToServices_A_fkey";

-- DropForeignKey
ALTER TABLE "_ClientsToServices" DROP CONSTRAINT "_ClientsToServices_B_fkey";

-- DropTable
DROP TABLE "_ClientsToServices";

-- CreateTable
CREATE TABLE "_clientServices" (
    "A" UUID NOT NULL,
    "B" UUID NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_clientServices_AB_unique" ON "_clientServices"("A", "B");

-- CreateIndex
CREATE INDEX "_clientServices_B_index" ON "_clientServices"("B");

-- AddForeignKey
ALTER TABLE "_clientServices" ADD CONSTRAINT "_clientServices_A_fkey" FOREIGN KEY ("A") REFERENCES "Clients"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_clientServices" ADD CONSTRAINT "_clientServices_B_fkey" FOREIGN KEY ("B") REFERENCES "Services"("_id") ON DELETE CASCADE ON UPDATE CASCADE;
