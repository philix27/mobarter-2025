import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { NotificationService } from "../notification/notification.service";
import {
    Order_AppealInput,
    Order_CancelInput,
    Order_CreateInput,
    Order_FaitReceivedInput,
    Order_FaitSentInput,
    Order_GetAllInput,
    Order_GetOneInput,
    Order_MoveCryptoToEscrowInput,
    Order_ReleaseCryptoFromEscrowInput,

} from "./orders.dto";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class OrderService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly notification: NotificationService
    ) {}

    public async create(params: Order_CreateInput & { userId: number }) {
        this.logger.info("Creating platform account ...");

        throw GqlErr("Unimplemented!");
    }

    public async getAll(params: Order_GetAllInput & { userId: number }) {}
    public async getOne(params: Order_GetOneInput & { userId: number }) {}

    public async moveCryptoToEscrow(
        params: Order_MoveCryptoToEscrowInput & { userId: number }
    ) {}

    public async faitSent(params: Order_FaitSentInput & { userId: number }) {}

    public async faitReceived(
        params: Order_FaitReceivedInput & { userId: number }
    ) {}

    public async releaseCryptoFromEscrow(
        params: Order_ReleaseCryptoFromEscrowInput & { userId: number }
    ) {}

    public async appeal(params: Order_AppealInput & { userId: number }) {}
    public async cancel(params: Order_CancelInput & { userId: number }) {}
}
