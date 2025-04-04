import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    Order_AppealInput,
    Order_CancelInput,
    Order_CreateInput,
    Order_GetAllInput,
    Order_GetOneInput,
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
                amount_crypto: p.amountCrypto,
                amount_fiat: p.amountFiat,
                estimated_duration: p.duration,
                currency_crypto: p.currencyCrypto,
                currency_fiat: p.currencyFiat,
                merchant_action: p.merchantAction,
                status: p.status,
                user_action: p.userAction,
                merchant_id: p.userId,
                trade_type: p.tradeType,
            },
        });

        return res;
    }

    public async createBuy(p: Order_CreateInput & { userId: number }) {
        this.logger.info("Creating platform account ...");

        const res = await this.prisma.orders.create({
            data: {
                amount_crypto: p.amountCrypto,
                amount_fiat: p.amountFiat,
                estimated_duration: p.duration,
                currency_crypto: p.currencyCrypto,
                currency_fiat: p.currencyFiat,
                merchant_action: p.merchantAction,
                status: p.status,
                user_action: p.userAction,
                merchant_id: p.userId,
                trade_type: p.tradeType,
                
            },
        });

        return res;
    }

    public async getAllForCustomer(p: Order_GetAllInput & { userId: number }) {
        const res = await this.prisma.orders.findMany({
            where: {
               trade_type: p.tradeType,
                currency_crypto: p.currencyCrypto,
                currency_fiat: p.currencyFiat,
                status: p.status,
                customer_id: p.userId,
            },
        });
        return res;
    }

    public async getAllForMerchant(p: Order_GetAllInput & { userId: number }) {
        const res = await this.prisma.orders.findMany({
            where: {
                merchant_id: p.userId,
                 trade_type: p.tradeType,
                currency_crypto: p.currencyCrypto,
                currency_fiat: p.currencyFiat,
                status: p.status,
            },
        });
        return res;
    }

    public async getOne(p: Order_GetOneInput & { userId: number }) {
        const res = await this.prisma.orders.findFirst({
            where: {
                id: p.id,
            },
        });
        return res;
    }

    

    
    public async appeal(params: Order_AppealInput & { userId: number }) {}
    public async cancel(params: Order_CancelInput & { userId: number }) {}
}
