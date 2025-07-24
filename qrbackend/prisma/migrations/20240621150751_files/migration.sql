-- CreateTable
CREATE TABLE "Files" (
    "_id" UUID NOT NULL,
    "path" TEXT NOT NULL,
    "imageFor" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Files_pkey" PRIMARY KEY ("_id")
);
