import { Global, Module } from "@nestjs/common";

import { ConfigModule, ConfigService } from "@nestjs/config";
import { RedisPubSub } from "graphql-redis-subscriptions";

export const PUB_SUB = "PUB_SUB";

@Global()
@Module({
    imports: [ConfigModule],
    providers: [
        {
            provide: PUB_SUB,
            inject: [ConfigService],
            useFactory: (configService: ConfigService) => {
                const pubsub = new RedisPubSub({
                    connection: {
                        host: configService.get("REDIS_HOST"),
                        port: configService.get("REDIS_PORT"),
                    },
                });

                return pubsub;
            },
        },
    ],
    exports: [PUB_SUB],
})
export class PubSubModule {}
