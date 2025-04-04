import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
// import { NotificationService } from "../notification/notification.service";
import {
    Order_AppealInput,
    Order_CancelInput,
    Order_FaitSentInput,
} from "./orders.dto";

@Injectable()
export class OrderBuyService {
    public constructor(
        private readonly logger: LoggerService,
        // private readonly notification: NotificationService,
        private readonly prisma: PrismaService
    ) {}

    


    public async customer_send_request(p: Order_FaitSentInput & { userId: number }) {
        this.logger.info("customer_send_request...")
             const res = await this.prisma.orders.update({
            where: {
                id: p.id,
                customer_id: p.userId,
            },
            data: {
                buy_time1_customer_request: new Date().getDate.toString(),
            },
        });
        return res;
    }
    
    public async merchant_lock_crypto(p: Order_FaitSentInput & { userId: number }) {
         this.logger.info("merchant_lock_crypto...")
          const res = await this.prisma.orders.update({
            where: {
                id: p.id,
                merchant_id: p.userId,
            },
            data: {
                buy_time2_merchant_lock_crypto: new Date().getDate.toString(),
            },
        });
        return res;
     }
    public async customer_send_fiat(p: Order_FaitSentInput & { userId: number }) {
         this.logger.info("customer_send_fiat...")
        const res = await this.prisma.orders.update({
            where: {
                id: p.id,
                customer_id: p.userId,
            },
            data: {
                buy_time3_customer_send_fiat: new Date().getDate.toString(),
            },
        });
        return res;
     }
    public async customer_release_crypto(p: Order_FaitSentInput & { userId: number }) {
         this.logger.info("customer_release_crypto...")
        const res = await this.prisma.orders.update({
            where: {
                id: p.id,
                customer_id: p.userId,
            },
            data: {
                buy_time4_merchant_release_crypto: new Date().getDate.toString(),
            },
        });
        return res;

     }
    

   
    public async appeal(params: Order_AppealInput & { userId: number }) {}
    public async cancel(params: Order_CancelInput & { userId: number }) {}
}
