/*
  Warnings:

  - You are about to drop the `Test` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Test";

-- CreateTable
CREATE TABLE "Services" (
    "_id" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "shortNote" TEXT NOT NULL DEFAULT '',
    "description" TEXT NOT NULL DEFAULT '',
    "icon" TEXT DEFAULT '',
    "order" INTEGER,
    "isActive" BOOLEAN NOT NULL DEFAULT false,
    "featuredImagePath" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Services_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "serviceFeatures" (
    "_id" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL DEFAULT '',
    "imagePath" TEXT NOT NULL DEFAULT '',
    "icon" TEXT NOT NULL DEFAULT '',
    "isFeatuered" BOOLEAN NOT NULL DEFAULT false,
    "order" INTEGER,
    "isActive" BOOLEAN NOT NULL DEFAULT false,
    "serviceId" UUID,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "serviceFeatures_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "serviceHighlights" (
    "_id" UUID NOT NULL,
    "order" INTEGER,
    "isActive" BOOLEAN NOT NULL DEFAULT false,
    "serviceId" UUID,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "serviceHighlights_pkey" PRIMARY KEY ("_id")
);

-- AddForeignKey
ALTER TABLE "serviceFeatures" ADD CONSTRAINT "serviceFeatures_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES "Services"("_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "serviceHighlights" ADD CONSTRAINT "serviceHighlights_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES "Services"("_id") ON DELETE SET NULL ON UPDATE CASCADE;
