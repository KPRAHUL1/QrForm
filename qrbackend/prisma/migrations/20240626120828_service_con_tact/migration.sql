-- AlterTable
ALTER TABLE "Contact" ADD COLUMN     "service" TEXT,
ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "mobileNumber" SET DATA TYPE TEXT;
