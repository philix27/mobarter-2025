import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { BankAccountService } from "./bankAccount.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { BankAccountResolver } from "./bankAccount.resolver";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [BankAccountService, BankAccountResolver, NotificationService],
    exports: [],
})
export class BankAccountModule {}
