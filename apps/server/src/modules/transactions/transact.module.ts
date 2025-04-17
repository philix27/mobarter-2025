import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { TransactionsService } from "./transact.service";
import { TransactionsResolver } from "./transact.resolver";

@Module({
    imports: [CommonModule, ],
    providers: [
        TransactionsService,
        TransactionsResolver,
    ],
    exports: [],
})
export class TransactionsModule {}
