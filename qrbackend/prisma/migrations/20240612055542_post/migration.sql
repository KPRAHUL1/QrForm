-- CreateTable
CREATE TABLE "Post" (
    "_id" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT,
    "status" TEXT DEFAULT 'draft',
    "tags" TEXT,
    "shortNote" TEXT,
    "imagePath" TEXT,
    "featuredImagePath" TEXT,
    "publishedDate" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "author" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Post_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "_PostCategories" (
    "A" UUID NOT NULL,
    "B" UUID NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_PostCategories_AB_unique" ON "_PostCategories"("A", "B");

-- CreateIndex
CREATE INDEX "_PostCategories_B_index" ON "_PostCategories"("B");

-- AddForeignKey
ALTER TABLE "_PostCategories" ADD CONSTRAINT "_PostCategories_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PostCategories" ADD CONSTRAINT "_PostCategories_B_fkey" FOREIGN KEY ("B") REFERENCES "Post"("_id") ON DELETE CASCADE ON UPDATE CASCADE;
