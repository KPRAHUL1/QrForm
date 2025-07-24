-- CreateTable
CREATE TABLE "Category" (
    "_id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "icon" TEXT,
    "imagePath" TEXT,
    "shortDescription" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Category_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Project" (
    "_id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "shortNote" TEXT,
    "featuredImagePath" TEXT,
    "imagePath" TEXT,
    "isActive" BOOLEAN NOT NULL DEFAULT false,
    "projectStatus" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),
    "createdBy" TEXT,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Process" (
    "_id" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "icon" TEXT,
    "imagePath" TEXT,
    "description" TEXT,
    "order" INTEGER,
    "shortNote" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Process_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Contact" (
    "_id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT,
    "mobileNumber" INTEGER,
    "subject" TEXT,
    "message" TEXT,
    "companyName" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Contact_pkey" PRIMARY KEY ("_id")
);
