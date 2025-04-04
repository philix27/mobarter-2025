import { Module } from "@nestjs/common";
import { TerminusModule } from "@nestjs/terminus";

import { HealthController } from "./controller";
import { LogInterceptor } from "./flow";
import { configProvider, LoggerService, PrismaService } from "./provider";
import { GqlAuthGuard, VendorGuard } from "./guards";
import { HelperService } from "../helper/helper.service";

@Module({
    imports: [TerminusModule],
    providers: [
        configProvider,
        LoggerService,
        LogInterceptor,
        PrismaService,
        GqlAuthGuard,
        VendorGuard,
        HelperService,
    ],
    exports: [configProvider, LoggerService, LogInterceptor, PrismaService,   GqlAuthGuard,
        VendorGuard, HelperService,],
    controllers: [HealthController],
})
export class CommonModule {}
