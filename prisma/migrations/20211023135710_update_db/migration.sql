/*
  Warnings:

  - You are about to drop the column `content` on the `Book` table. All the data in the column will be lost.
  - You are about to drop the column `published` on the `Book` table. All the data in the column will be lost.
  - Added the required column `author` to the `Book` table without a default value. This is not possible if the table is not empty.
  - Added the required column `supplierId` to the `Book` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateReturned` to the `RentedBooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateToReturn` to the `RentedBooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rentedDate` to the `RentedBooks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Book" DROP COLUMN "content",
DROP COLUMN "published",
ADD COLUMN     "author" TEXT NOT NULL,
ADD COLUMN     "supplierId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "RentedBooks" ADD COLUMN     "dateReturned" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "dateToReturn" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "rentedDate" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Supplier" (
    "id" TEXT NOT NULL,
    "companyName" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "address" TEXT NOT NULL,

    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Order" (
    "id" TEXT NOT NULL,
    "orderNumber" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,
    "orderDate" TIMESTAMP(3) NOT NULL,
    "totalAmount" DOUBLE PRECISION NOT NULL,
    "quantity" INTEGER NOT NULL,
    "shppingAddress" TEXT NOT NULL,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES "Supplier"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "Book"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
