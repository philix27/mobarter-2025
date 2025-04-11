import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { TelegramService } from "./telegram.service";
import { NotificationModule } from "../notification/notification.module";
import { TelegramResolver } from "./telegram.resolver";
import { HelperService } from "../helper/helper.service";
import { ConfigModule } from "@nestjs/config";
import jwtConfig from "../auth/jwt.config";
import { JwtModule } from "@nestjs/jwt";
import { TelegramController } from "./telegram.controller";

@Module({
    imports: [CommonModule, NotificationModule,
        JwtModule.registerAsync(jwtConfig.asProvider()),
        ConfigModule.forFeature(jwtConfig),
    ],
    providers: [
        TelegramService,
        TelegramResolver,
        HelperService,
    ],
    controllers: [TelegramController]
})
export class TelegramModule {}
