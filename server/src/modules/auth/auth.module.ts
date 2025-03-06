import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { AuthService } from "./auth.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { AuthResolver } from "./auth.resolver";
import { WalletCryptoService } from "../wallet-crypto/crypto.service";
import { WalletFiatService } from "../wallet-fiat/fiat.service";
import { JwtCryptoService } from "./jwt.service";
import { UserService } from "../user/user.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        AuthService,
        AuthResolver,
        NotificationService,
        WalletCryptoService,
        WalletFiatService,
        JwtCryptoService,
        UserService,
    ],
    exports: [],
})
export class AuthModule {}
