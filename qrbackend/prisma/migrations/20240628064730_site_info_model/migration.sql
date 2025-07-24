-- CreateTable
CREATE TABLE "SiteInformation" (
    "_id" UUID NOT NULL,
    "companyName" TEXT NOT NULL,
    "professionalExperience" TEXT,
    "teamCount" TEXT,
    "vision" TEXT,
    "mission" TEXT,
    "values" TEXT,
    "projectHandled" TEXT,
    "mobilePrimary" TEXT,
    "mobileSecondary" TEXT,
    "mobileSales" TEXT,
    "mobileHR" TEXT,
    "emailPrimary" TEXT,
    "emailSecondary" TEXT,
    "emailSales" TEXT,
    "emailHR" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "SiteInformation_pkey" PRIMARY KEY ("_id")
);
