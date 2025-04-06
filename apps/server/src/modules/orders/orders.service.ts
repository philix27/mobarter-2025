import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    Order_AppealInput,
    Order_CancelInput,
    Order_CreteBuyInput,
    Order_CreteSellInput,
    Order_CreteSellResponse,
    Order_GetAllInput,
    Order_GetOneInput,
    Order_Response,
} from "./orders.dto";

@Injectable()
export class OrderService {
    public constructor(
        private readonly logger: LoggerService,
        // private readonly notification: NotificationService,
        private readonly prisma: PrismaService
    ) {}

    public async createSell(p: Order_CreteSellInput & { userId: number }) : Promise<Order_CreteSellResponse> {
        this.logger.info("Creating platform account ...");

        const res = await this.prisma.orders.create({
            data: {
            customer_id: p.userId,
            merchant_id: p.merchant_id,
            action_merchant: p.action_merchant,
            amount_crypto: p.amount_crypto,
            amount_fiat: p.amount_fiat,
            bank_account_name: p.bank_account_name,
            bank_name: p.bank_name,
            bank_account_no: p.bank_account_no,
            currency_crypto: p.currency_crypto,
            currency_fiat: p.currency_fiat,
            wallet_customer: p.wallet_customer,
            wallet_merchant: p.wallet_merchant,
            estimated_duration: p.estimated_duration,
            trade_type: p.trade_type,
            status: p.status
            },
        });

        return {
            ...res,
            id: res.id,
            action_merchant: res.action_merchant!,
            action_user: res.action_user!,
            // amount_crypto: res.amount_crypto,
            // amount_fiat: res.amount_fiat,
            // bank_account_name: res.bank_account_name,
            // bank_name: res.bank_name,
            // bank_account_no: res.bank_account_no,
            // currency_crypto: res.currency_crypto,
            // currency_fiat: res.currency_fiat,
            // wallet_customer: res.wallet_customer,
            // wallet_merchant: res.wallet_merchant,
            // estimated_duration: res.estimated_duration,
            // trade_type: res.trade_type,
            // status: p.status
        };
    }
    public async createBuy(p: Order_CreteBuyInput & { userId: number }) : Promise<Order_CreteSellResponse> {
        this.logger.info("Creating platform account ...");

        const res = await this.prisma.orders.create({
            data: {
                ...p,
                customer_id: p.userId,
                buy_time1_customer_request: new Date(),
            },
        });

       
        return {
            ...res,
            id: res.id,
            action_merchant: res.action_merchant!,
            action_user: res.action_user!,
        };
    }

   

    public async getAllForCustomer(p: Order_GetAllInput & { userId: number }): Promise<Order_Response[]> {
        const res = await this.prisma.orders.findMany({
            where: {
               trade_type: p.trade_type,
                currency_crypto: p.currency_crypto,
                currency_fiat: p.currency_fiat,
                status: p.status,
                customer_id: p.userId,
            },
        });
        
        return res.map((item) => {
            return {
            ...item,
            id: item.id,
            action_merchant: item.action_merchant!,
            action_user: item.action_user!,

        }});
    }

    public async getAllForMerchant(p: Order_GetAllInput & { userId: number }): Promise<Order_Response[]> {
        const res = await this.prisma.orders.findMany({
            where: {
                merchant_id: p.userId,
                trade_type: p.trade_type,
                currency_crypto: p.currency_crypto,
                currency_fiat: p.currency_fiat,
                status: p.status,
            },
        });
        return res.map((item) => {
            return {
                ...res,
                id: item.id,
                action_merchant: item.action_merchant!,
                action_user: item.action_user!,
            }
        });
    }

    public async getOne(p: Order_GetOneInput & { userId: number }): Promise<Order_Response> {
        const res = await this.prisma.orders.findFirst({
            where: {
                id: p.id,
            },
        });
        return {
            ...res,
            id: res!.id,
            action_merchant: res!.action_merchant!,
            action_user: res!.action_user!,
        };
    }
    
    public async appeal(params: Order_AppealInput & { userId: number }): Promise<Order_Response>  {
        throw new Error("Unimplemented");
    }
    
    public async cancel(params: Order_CancelInput & { userId: number }) : Promise<Order_Response>{
         throw new Error("Unimplemented");
    }
}
