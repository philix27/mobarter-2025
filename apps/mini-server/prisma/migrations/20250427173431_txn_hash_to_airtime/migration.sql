/*
  Warnings:

  - You are about to drop the column `currency` on the `Transactions` table. All the data in the column will be lost.

*/
-- CreateEnum
CREATE TYPE "OrderMode" AS ENUM ('MARKET', 'EXPRESS');

-- AlterEnum
-- This migration adds more than one value to an enum.
-- With PostgreSQL versions 11 and earlier, this is not possible
-- in a single migration. This can be worked around by creating
-- multiple migrations, each migration adding only one value to
-- the enum.


ALTER TYPE "TransactionCategory" ADD VALUE 'EXPRESS_EXCHANGE';
ALTER TYPE "TransactionCategory" ADD VALUE 'P2P_EXCHANGE';

-- AlterTable
ALTER TABLE "Orders" ADD COLUMN     "mode" "OrderMode",
ADD COLUMN     "txn_hash" TEXT;

-- AlterTable
ALTER TABLE "Transactions" DROP COLUMN "currency",
ADD COLUMN     "crypto_currency" "CurrencyFiat",
ADD COLUMN     "fiat_currency" "CurrencyCrypto",
ADD COLUMN     "transaction_hash" TEXT;

-- DropEnum
DROP TYPE "Currencies";
