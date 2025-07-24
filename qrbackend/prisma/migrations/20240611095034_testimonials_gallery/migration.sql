-- CreateTable
CREATE TABLE "Testimonials" (
    "_id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "designation" TEXT,
    "companyName" TEXT,
    "testimonials" TEXT,
    "logo" TEXT,
    "youTubeUrl" TEXT,
    "order" INTEGER,
    "serviceId" UUID,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Testimonials_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Gallery" (
    "_id" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "imagePath" TEXT,
    "designation" TEXT,
    "order" INTEGER,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Gallery_pkey" PRIMARY KEY ("_id")
);

-- AddForeignKey
ALTER TABLE "Testimonials" ADD CONSTRAINT "Testimonials_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES "Services"("_id") ON DELETE SET NULL ON UPDATE CASCADE;
