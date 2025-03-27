import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
// import { NotificationService } from "../notification/notification.service";
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

@Injectable()
export class OrderService {
    public constructor(
        private readonly logger: LoggerService,
        // private readonly notification: NotificationService,
        private readonly prisma: PrismaService
    ) {}

    public async create(p: Order_CreateInput & { userId: number }) {
        this.logger.info("Creating platform account ...");

        const res = await this.prisma.orders.create({
            data: {
                amountCrypto: p.amountCrypto,
                amountFiat: p.amountFiat,
                duration: p.duration,
                currencyCrypto: p.currencyCrypto,
                currencyFiat: p.currencyFiat,
                merchantAction: p.merchantAction,
                status: p.status,
                userAction: p.userAction,
                merchant_id: p.userId,
                timeCompleted: p.timeCompleted,
                tradeType: p.tradeType,
            },
        });

        return res;
    }

    public async getAll(p: Order_GetAllInput & { userId: number }) {
        const res = await this.prisma.orders.findMany({
            where: {
                user_id: p.userId,
            },
        });
        return res;
    }
    public async getOne(p: Order_GetOneInput & { userId: number }) {
        const res = await this.prisma.orders.findFirst({
            where: {
                id: p.id,
                user_id: p.userId,
            },
        });
        return res;
    }

    public async moveCryptoToEscrow(
        p: Order_MoveCryptoToEscrowInput & { userId: number }
    ) {
        const res = await this.prisma.orders.update({
            where: {
                id: p.id,
                user_id: p.userId,
            },
            data: {
                userAction: p.action,
            },
        });
        return res;
    }

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
