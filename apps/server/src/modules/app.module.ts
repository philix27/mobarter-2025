import { Module } from "@nestjs/common";
import { GraphQLModule } from "@nestjs/graphql";
import { ApolloDriver, ApolloDriverConfig } from "@nestjs/apollo";
import { ScheduleModule } from "@nestjs/schedule";
import { JwtModule } from "@nestjs/jwt";
import { CommonModule, secrets } from "./common";
// import { PubSubModule } from "./pubsub/pubsub.module";
import { NotificationModule } from "./notification/notification.module";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from "./user/user.module";
import { WalletCryptoModule } from "./wallet-crypto/crypto.module";
import { WalletFiatModule } from "./wallet-fiat/fiat.module";
import { BankAccountModule } from "./bankAccount/bankAccount.module";
import { PassportModule } from "@nestjs/passport";
import { HelpersModule } from "./helper/helper.module";
import { AdvertsModule } from "./adverts/adverts.module";
import { KycModule } from "./kyc/kyc.module";
import { ExchangeRateModule } from "./rates/rates.module";
import { CronModule } from "./cron/cron.module";
import { OrdersModule } from "./orders/orders.module";
import { UtilitiesModule } from "./utilities/utilities.module";
import { TransactionsModule } from "./transactions/transact.module";
// import { TelegramModule } from "./telegram/telegram.module";
// import { CryptoModule } from "./crypto/crypto.module";

@Module({
    imports: [
        ScheduleModule.forRoot(),
        GraphQLModule.forRoot<ApolloDriverConfig>({
            driver: ApolloDriver,
            playground: true,
            autoSchemaFile: true,
            sortSchema: true,
            introspection: true,
            subscriptions: {
                "graphql-ws": true,
            },
        }),
        PassportModule,
        // JwtModule.registerAsync(jwtConfig.asProvider()),
        JwtModule.register({
            global: true,
            secret: secrets.JWT_SECRET,
            signOptions: { expiresIn: "12h", algorithm: "RS256", "keyid": "", },
            "privateKey": ""
            
        }),
        CommonModule,
        HelpersModule,
        // PubSubModule,
        NotificationModule,
        AuthModule,
        UserModule,
        BankAccountModule,
        AdvertsModule,
        CronModule,
        OrdersModule,
        KycModule,
        WalletFiatModule,
        WalletCryptoModule,
        ExchangeRateModule,
        UtilitiesModule,
        TransactionsModule
        // CryptoModule,
    ],
})
export class ApplicationModule {}
