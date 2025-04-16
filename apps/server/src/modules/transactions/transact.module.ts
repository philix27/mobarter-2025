import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { TransactionsService } from "./transact.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { TransactionsResolver } from "./transact.resolver";
import { HelperService } from "../helper/helper.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        TransactionsService,
        TransactionsResolver,
        HelperService,
        NotificationService,
    ],
    exports: [],
})
export class TransactionsModule {}
