-- CreateTable
CREATE TABLE "Clients" (
    "_id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "companyName" TEXT NOT NULL,
    "description" TEXT,
    "logo" TEXT,
    "industry" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Clients_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "_ClientsToServices" (
    "A" UUID NOT NULL,
    "B" UUID NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_ClientsToServices_AB_unique" ON "_ClientsToServices"("A", "B");

-- CreateIndex
CREATE INDEX "_ClientsToServices_B_index" ON "_ClientsToServices"("B");

-- AddForeignKey
ALTER TABLE "_ClientsToServices" ADD CONSTRAINT "_ClientsToServices_A_fkey" FOREIGN KEY ("A") REFERENCES "Clients"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ClientsToServices" ADD CONSTRAINT "_ClientsToServices_B_fkey" FOREIGN KEY ("B") REFERENCES "Services"("_id") ON DELETE CASCADE ON UPDATE CASCADE;
