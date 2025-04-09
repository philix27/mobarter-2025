import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { HelpersModule } from "../helper/helper.module";
import { JwksService } from "./jwks.service";
import { JwksController } from "./crypto.controller";

@Module({
    imports: [
        CommonModule,
        HelpersModule,
    ],
    providers: [
        JwksService
    ],
    controllers: [JwksController],
})
export class CryptoModule {}
