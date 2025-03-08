import { Module } from "@nestjs/common";
import { GraphQLModule } from "@nestjs/graphql";
import { ApolloDriver, ApolloDriverConfig } from "@nestjs/apollo";
import { CommonModule, secrets } from "./common";
import { PricesModule } from "./prices/prices.module";
import { ScheduleModule } from "@nestjs/schedule";
import { PubSubModule } from "./pubsub/pubsub.module";
import { NotificationModule } from "./notification/notification.module";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from "./user/user.module";
import { WalletCryptoModule } from "./wallet-crypto/crypto.module";
import { WalletFiatModule } from "./wallet-fiat/fiat.module";
import { JwtModule } from "@nestjs/jwt";
import { BankAccountModule } from "./bankAccount/bankAccount.module";
import { PassportModule } from "@nestjs/passport";
// import { CronModule } from "./cron/cron.module";
// import { OrdersModule } from "./orders/orders.module";
// import { SwapModule } from "./swap/swap.module";
// import { KycModule } from "./kyc/kyc.module";

@Module({
    imports: [
        ScheduleModule.forRoot(),
        GraphQLModule.forRoot<ApolloDriverConfig>({
            driver: ApolloDriver,
            playground: true,
            autoSchemaFile: true,
            sortSchema: true,
            subscriptions: {
                "graphql-ws": true,
            },
        }),
        PassportModule,
        // JwtModule.registerAsync(jwtConfig.asProvider()),
        JwtModule.register({
            global: true,
            secret: secrets.JWT_SECRET,
            signOptions: { expiresIn: "12h" },
        }),
        CommonModule,
        PricesModule,
        PubSubModule,
        NotificationModule,
        AuthModule,
        UserModule,
        BankAccountModule,
        // CronModule,
        // OrdersModule,
        // SwapModule,
        // KycModule,
        WalletFiatModule,
        WalletCryptoModule,
    ],
})
export class ApplicationModule {}
