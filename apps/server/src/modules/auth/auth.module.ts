import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { AuthService } from "./auth.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { AuthResolver } from "./auth.resolver";
import { WalletCryptoService } from "../wallet-crypto/crypto.service";
import { WalletFiatService } from "../wallet-fiat/fiat.service";
import { UserService } from "../user/user.service";
import { WalletCryptoModule } from "../wallet-crypto/crypto.module";
import { PrivyWalletService } from "../wallet-crypto/privy.service";
import { JwtStrategy } from "./jwt.strategy";
import jwtConfig from "./jwt.config";
import { JwtModule } from "@nestjs/jwt";
import { ConfigModule } from "@nestjs/config";
import { HelperService } from "../helper/helper.service";
import { HelpersModule } from "../helper/helper.module";
import { AuthController } from "./auth.controller";

@Module({
    imports: [
        CommonModule,
        NotificationModule,
        WalletCryptoModule,
        HelpersModule,
        JwtModule.registerAsync(jwtConfig.asProvider()),
        ConfigModule.forFeature(jwtConfig),
    ],
    providers: [
        AuthService,
        AuthResolver,
        NotificationService,
        WalletCryptoService,
        WalletFiatService,
        HelperService,
        UserService,
        PrivyWalletService,
        JwtStrategy,
    ],
    controllers: [AuthController],
    // exports: [JwtStrategy, GqlAuthGuard],
})
export class AuthModule {}
