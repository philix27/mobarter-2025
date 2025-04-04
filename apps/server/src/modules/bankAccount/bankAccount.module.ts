import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { BankAccountService } from "./bankAccount.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { BankAccountResolver } from "./bankAccount.resolver";
import { AuthModule } from "../auth/auth.module";
import { JwtStrategy } from "../auth/jwt.strategy";
import { ConfigModule } from "@nestjs/config";
import { JwtModule } from "@nestjs/jwt";
import jwtConfig from "../auth/jwt.config";
import { HelperService } from "../helper/helper.service";
import { GqlAuthGuard } from "../common/guards";

@Module({
    imports: [
        CommonModule,
        NotificationModule,
        AuthModule,
        JwtModule.registerAsync(jwtConfig.asProvider()),
        ConfigModule.forFeature(jwtConfig),
    ],
    providers: [
        BankAccountService,
        BankAccountResolver,
        NotificationService,
        JwtStrategy,
        GqlAuthGuard,
        HelperService,
    ],
    exports: [],
})
export class BankAccountModule {}
