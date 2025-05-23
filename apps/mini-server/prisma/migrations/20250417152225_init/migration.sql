-- CreateEnum
CREATE TYPE "MerchantStatus" AS ENUM ('Online', 'Offline', 'Wait');

-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('Regular', 'P2pMerchant', 'CustomeSupport');

-- CreateEnum
CREATE TYPE "Country" AS ENUM ('Nigeria', 'Ghana', 'Kenya');

-- CreateEnum
CREATE TYPE "ChainType" AS ENUM ('Ethereum', 'Solana', 'Cosmos');

-- CreateEnum
CREATE TYPE "CredentialsStatus" AS ENUM ('REVIEW', 'VALID', 'FAILED', 'NONE');

-- CreateEnum
CREATE TYPE "TradeType" AS ENUM ('BUY', 'SELL');

-- CreateEnum
CREATE TYPE "CurrencyCrypto" AS ENUM ('BTC', 'CUSD', 'ETH_USDT', 'BASE_USDT', 'ETH');

-- CreateEnum
CREATE TYPE "CurrencyFiat" AS ENUM ('NGN', 'GHS', 'KES');

-- CreateEnum
CREATE TYPE "AdvertStatus" AS ENUM ('OPEN', 'CLOSE');

-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('PENDING', 'COMPLETED', 'CANCEL', 'APPEAL');

-- CreateEnum
CREATE TYPE "OrderActions" AS ENUM ('LockCrypto', 'FaitSent', 'FaitReceived', 'ReleaseCrypto', 'Appeal', 'Cancel');

-- CreateEnum
CREATE TYPE "BankName" AS ENUM ('NG_ZENITH', 'NG_GTB', 'NG_UBA', 'NG_FIDELITY', 'NG_OPAY', 'NG_MONIEPOINT', 'NG_WEMA', 'NG_UNITY', 'NG_STERLING', 'NG_STANBIC', 'NG_LOTUS', 'NG_KEYSTONE', 'NG_JAIZ', 'NG_KUDA', 'NG_PALMPAY', 'NG_ACCESS', 'NG_FCMB', 'NG_ECOBANK', 'NG_FIRST');

-- CreateEnum
CREATE TYPE "CurrencyType" AS ENUM ('FIAT', 'CRYPTO');

-- CreateEnum
CREATE TYPE "Currencies" AS ENUM ('NGN', 'BTC', 'CUSD', 'USDT', 'USDTx', 'ETH');

-- CreateEnum
CREATE TYPE "AccessTokenPlatform" AS ENUM ('RELOADLY');

-- CreateEnum
CREATE TYPE "TransactionCategory" AS ENUM ('AIRTIME', 'DATA_BUNDLE', 'GIFT_CARD');

-- CreateEnum
CREATE TYPE "TransactionsMode" AS ENUM ('CREDIT', 'DEBIT');

-- CreateEnum
CREATE TYPE "TransactionStatus" AS ENUM ('COMPLETED', 'PENDING');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "firstname" TEXT,
    "lastname" TEXT,
    "middlename" TEXT,
    "email" TEXT,
    "password" TEXT,
    "transaction_pin" TEXT,
    "role" "UserRole" DEFAULT 'Regular',
    "country" "Country",
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "bvn" TEXT,
    "bvn_status" "CredentialsStatus" DEFAULT 'NONE',
    "nin" TEXT,
    "nin_status" "CredentialsStatus" DEFAULT 'NONE',
    "home_address" TEXT,
    "phone" TEXT,
    "phone_verified" BOOLEAN DEFAULT false,
    "merchant_success_rate" INTEGER,
    "merchant_trade_count" INTEGER DEFAULT 0,
    "merchant_nickname" TEXT,
    "merchant_status" "MerchantStatus" DEFAULT 'Offline',

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CryptoWallets" (
    "id" SERIAL NOT NULL,
    "address" TEXT NOT NULL,
    "wallet_id" TEXT,
    "chainType" "ChainType" NOT NULL,
    "minipay" BOOLEAN DEFAULT false,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "user_id" INTEGER,

    CONSTRAINT "CryptoWallets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BankAccount" (
    "id" SERIAL NOT NULL,
    "account_name" TEXT NOT NULL,
    "account_no" TEXT NOT NULL,
    "soft_delete" BOOLEAN DEFAULT false,
    "bank_name" "BankName" NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "user_id" INTEGER NOT NULL,

    CONSTRAINT "BankAccount_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Adverts" (
    "id" SERIAL NOT NULL,
    "rateFloat" DOUBLE PRECISION,
    "rateFixed" DOUBLE PRECISION,
    "isFloatRate" BOOLEAN NOT NULL DEFAULT true,
    "limitUpper" DOUBLE PRECISION NOT NULL,
    "limitLower" DOUBLE PRECISION NOT NULL,
    "fiatAmountPerCrypto" INTEGER NOT NULL,
    "tradeType" "TradeType" NOT NULL,
    "currency_crypto" "CurrencyCrypto" NOT NULL,
    "currency_fiat" "CurrencyFiat" NOT NULL,
    "instructions" TEXT NOT NULL,
    "wallet_address" TEXT NOT NULL,
    "status" "AdvertStatus" DEFAULT 'OPEN',
    "duration" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "merchant_id" INTEGER NOT NULL,

    CONSTRAINT "Adverts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Orders" (
    "id" SERIAL NOT NULL,
    "amount_fiat" DOUBLE PRECISION NOT NULL,
    "amount_crypto" DOUBLE PRECISION NOT NULL,
    "wallet_customer" TEXT NOT NULL,
    "wallet_merchant" TEXT NOT NULL,
    "estimated_duration" TEXT NOT NULL,
    "bank_account_name" TEXT NOT NULL,
    "bank_account_no" TEXT NOT NULL,
    "bank_name" "BankName" NOT NULL,
    "currency_crypto" "CurrencyCrypto" NOT NULL,
    "currency_fiat" "CurrencyFiat" NOT NULL,
    "trade_type" "TradeType" NOT NULL,
    "status" "OrderStatus" NOT NULL DEFAULT 'PENDING',
    "action_user" "OrderActions",
    "action_merchant" "OrderActions",
    "sell_txn_hash_customer_lock_crypto" TEXT,
    "sell_txn_hash_customer_release_crypto" TEXT,
    "sell_time2_customer_lock_crypto" TIMESTAMP(3),
    "sell_time1_customer_request" TIMESTAMP(3),
    "sell_time3_merchant_send_fiat" TIMESTAMP(3),
    "sell_time4_customer_release_crypto" TIMESTAMP(3),
    "buy_time1_customer_request" TIMESTAMP(3),
    "buy_time2_merchant_lock_crypto" TIMESTAMP(3),
    "buy_time3_customer_send_fiat" TIMESTAMP(3),
    "buy_time4_merchant_release_crypto" TIMESTAMP(3),
    "buy_txn_hash_merchant_lock_crypto" TEXT,
    "buy_txn_hash_merchant_release_crypto" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "customer_id" INTEGER NOT NULL,
    "merchant_id" INTEGER NOT NULL,

    CONSTRAINT "Orders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ExchangeRates" (
    "id" SERIAL NOT NULL,
    "rates" TEXT,
    "exchangeratesapi" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "ExchangeRates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AccessTokens" (
    "id" SERIAL NOT NULL,
    "token" TEXT NOT NULL,
    "platform" "AccessTokenPlatform" NOT NULL,
    "purpose" TEXT,
    "response_data" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "AccessTokens_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Transactions" (
    "id" SERIAL NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "note" TEXT NOT NULL,
    "currency" "Currencies" NOT NULL,
    "category" "TransactionCategory" NOT NULL,
    "mode" "TransactionsMode" NOT NULL,
    "status" "TransactionStatus" NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "user_id" INTEGER,

    CONSTRAINT "Transactions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_AdvertsToBankAccount" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_AdvertsToBankAccount_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "CryptoWallets_address_key" ON "CryptoWallets"("address");

-- CreateIndex
CREATE INDEX "_AdvertsToBankAccount_B_index" ON "_AdvertsToBankAccount"("B");

-- AddForeignKey
ALTER TABLE "CryptoWallets" ADD CONSTRAINT "CryptoWallets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BankAccount" ADD CONSTRAINT "BankAccount_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Adverts" ADD CONSTRAINT "Adverts_merchant_id_fkey" FOREIGN KEY ("merchant_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Transactions" ADD CONSTRAINT "Transactions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AdvertsToBankAccount" ADD CONSTRAINT "_AdvertsToBankAccount_A_fkey" FOREIGN KEY ("A") REFERENCES "Adverts"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AdvertsToBankAccount" ADD CONSTRAINT "_AdvertsToBankAccount_B_fkey" FOREIGN KEY ("B") REFERENCES "BankAccount"("id") ON DELETE CASCADE ON UPDATE CASCADE;
