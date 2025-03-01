import { Module } from "@nestjs/common";
import { GraphQLModule } from "@nestjs/graphql";
import { ApolloDriver, ApolloDriverConfig } from "@nestjs/apollo";
import { CommonModule } from "./common";
import { PricesModule } from "./prices/prices.module";
import { CronModule } from "./cron/cron.module";
import { ScheduleModule } from "@nestjs/schedule";
import { PubSubModule } from "./pubsub/pubsub.module";
import { NotificationModule } from "./notification/notification.module";
import { AuthModule } from "./auth/auth.module";

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
        CommonModule,
        PricesModule,
        CronModule,
        PubSubModule,
        NotificationModule,
        AuthModule,
    ],
})
export class ApplicationModule {}
