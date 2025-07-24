/*
  Warnings:

  - You are about to drop the `Account` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Branch` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Brand` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Cart` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Clients` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Contact` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Coupons` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Files` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Gallery` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Order` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OrderItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Process` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Project` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Review` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Season` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Services` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Session` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SiteInformation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Staff` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Store` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Testimonials` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserStore` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_PostCategories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_clientServices` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `serviceFeatures` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `serviceHighlights` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Account" DROP CONSTRAINT "Account_userId_fkey";

-- DropForeignKey
ALTER TABLE "Branch" DROP CONSTRAINT "Branch_createdById_fkey";

-- DropForeignKey
ALTER TABLE "Branch" DROP CONSTRAINT "Branch_storeId_fkey";

-- DropForeignKey
ALTER TABLE "Cart" DROP CONSTRAINT "Cart_productId_fkey";

-- DropForeignKey
ALTER TABLE "Cart" DROP CONSTRAINT "Cart_userId_fkey";

-- DropForeignKey
ALTER TABLE "Order" DROP CONSTRAINT "Order_userId_fkey";

-- DropForeignKey
ALTER TABLE "OrderItem" DROP CONSTRAINT "OrderItem_orderId_fkey";

-- DropForeignKey
ALTER TABLE "OrderItem" DROP CONSTRAINT "OrderItem_productId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_brandId_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_seasonId_fkey";

-- DropForeignKey
ALTER TABLE "Review" DROP CONSTRAINT "Review_productId_fkey";

-- DropForeignKey
ALTER TABLE "Review" DROP CONSTRAINT "Review_userId_fkey";

-- DropForeignKey
ALTER TABLE "Session" DROP CONSTRAINT "Session_userId_fkey";

-- DropForeignKey
ALTER TABLE "Staff" DROP CONSTRAINT "Staff_branchId_fkey";

-- DropForeignKey
ALTER TABLE "Staff" DROP CONSTRAINT "Staff_storeId_fkey";

-- DropForeignKey
ALTER TABLE "Store" DROP CONSTRAINT "Store_createdById_fkey";

-- DropForeignKey
ALTER TABLE "Testimonials" DROP CONSTRAINT "Testimonials_serviceId_fkey";

-- DropForeignKey
ALTER TABLE "UserStore" DROP CONSTRAINT "UserStore_storeId_fkey";

-- DropForeignKey
ALTER TABLE "UserStore" DROP CONSTRAINT "UserStore_userId_fkey";

-- DropForeignKey
ALTER TABLE "_PostCategories" DROP CONSTRAINT "_PostCategories_A_fkey";

-- DropForeignKey
ALTER TABLE "_PostCategories" DROP CONSTRAINT "_PostCategories_B_fkey";

-- DropForeignKey
ALTER TABLE "_clientServices" DROP CONSTRAINT "_clientServices_A_fkey";

-- DropForeignKey
ALTER TABLE "_clientServices" DROP CONSTRAINT "_clientServices_B_fkey";

-- DropForeignKey
ALTER TABLE "serviceFeatures" DROP CONSTRAINT "serviceFeatures_serviceId_fkey";

-- DropForeignKey
ALTER TABLE "serviceHighlights" DROP CONSTRAINT "serviceHighlights_serviceId_fkey";

-- DropTable
DROP TABLE "Account";

-- DropTable
DROP TABLE "Branch";

-- DropTable
DROP TABLE "Brand";

-- DropTable
DROP TABLE "Cart";

-- DropTable
DROP TABLE "Category";

-- DropTable
DROP TABLE "Clients";

-- DropTable
DROP TABLE "Contact";

-- DropTable
DROP TABLE "Coupons";

-- DropTable
DROP TABLE "Files";

-- DropTable
DROP TABLE "Gallery";

-- DropTable
DROP TABLE "Order";

-- DropTable
DROP TABLE "OrderItem";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Process";

-- DropTable
DROP TABLE "Product";

-- DropTable
DROP TABLE "Project";

-- DropTable
DROP TABLE "Review";

-- DropTable
DROP TABLE "Season";

-- DropTable
DROP TABLE "Services";

-- DropTable
DROP TABLE "Session";

-- DropTable
DROP TABLE "SiteInformation";

-- DropTable
DROP TABLE "Staff";

-- DropTable
DROP TABLE "Store";

-- DropTable
DROP TABLE "Testimonials";

-- DropTable
DROP TABLE "User";

-- DropTable
DROP TABLE "UserStore";

-- DropTable
DROP TABLE "_PostCategories";

-- DropTable
DROP TABLE "_clientServices";

-- DropTable
DROP TABLE "serviceFeatures";

-- DropTable
DROP TABLE "serviceHighlights";

-- DropEnum
DROP TYPE "StaffRole";

-- CreateTable
CREATE TABLE "Registration" (
    "id" TEXT NOT NULL,
    "fullName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "collegeName" TEXT NOT NULL,
    "department" TEXT NOT NULL,
    "year" TEXT NOT NULL,
    "awsExperience" TEXT,
    "linkedin" TEXT,
    "paymentMode" TEXT NOT NULL,
    "paymentProof" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Registration_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Registration_email_key" ON "Registration"("email");
