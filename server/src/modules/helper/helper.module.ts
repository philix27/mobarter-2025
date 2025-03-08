import { Module } from "@nestjs/common";
import { CryptoService } from "./crypto.service";
import { JwtAppService } from "./jwt.service";

@Module({
    providers: [CryptoService, JwtAppService],
    exports: [CryptoService, JwtAppService],
})
export class HelpersModule {}
