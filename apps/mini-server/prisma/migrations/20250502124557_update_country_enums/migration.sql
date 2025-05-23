/*
  Warnings:

  - The values [NGN,GHS,KES] on the enum `CurrencyFiat` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "CurrencyFiat_new" AS ENUM ('NG', 'GH', 'KE', 'MW', 'RW', 'TZ', 'UG', 'ZA');
ALTER TABLE "Adverts" ALTER COLUMN "currency_fiat" TYPE "CurrencyFiat_new" USING ("currency_fiat"::text::"CurrencyFiat_new");
ALTER TABLE "Orders" ALTER COLUMN "currency_fiat" TYPE "CurrencyFiat_new" USING ("currency_fiat"::text::"CurrencyFiat_new");
ALTER TABLE "Transactions" ALTER COLUMN "crypto_currency" TYPE "CurrencyFiat_new" USING ("crypto_currency"::text::"CurrencyFiat_new");
ALTER TYPE "CurrencyFiat" RENAME TO "CurrencyFiat_old";
ALTER TYPE "CurrencyFiat_new" RENAME TO "CurrencyFiat";
DROP TYPE "CurrencyFiat_old";
COMMIT;

-- AlterTable
ALTER TABLE "Adverts" ALTER COLUMN "currency_crypto" DROP NOT NULL,
ALTER COLUMN "currency_fiat" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Orders" ALTER COLUMN "currency_fiat" DROP NOT NULL;
