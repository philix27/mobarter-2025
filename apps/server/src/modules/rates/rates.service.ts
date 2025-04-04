import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import axios from "axios";
import { IRates } from "./types";
import { ExchangeRate_Response } from "./rates.dto";

@Injectable()
export class ExchangeRateService {
    public constructor(private readonly logger: LoggerService,
        private readonly prisma: PrismaService) { }
    
    // Runs at every 1 hour
    async getRates(): Promise<ExchangeRate_Response> {
       
        const res = await this.prisma.exchangeRates.findFirst({
            where: {
                created_at: ""
            }
        })

        if (res) {
             this.logger.info("Using fx cache")
             const cacheResult = JSON.parse(res.exchangeratesapi!) as IRates 
        const curr = cacheResult.conversion_rates
    return {
            "EUR": curr.EUR,
            NGN: curr.NGN, 
            USD: curr.USD,
            KES: curr.KES,
            GHS : curr.GHS
        }
       
        }

        const curr = await this.getFx()
          this.logger.info("Pulling fx data")
            return {
                "EUR": curr.EUR,
                NGN: curr.NGN, 
                USD: curr.USD,
                KES: curr.KES,
                GHS : curr.GHS
            }

    }

    private async getFx() {
        const res = await axios.get(`https://v6.exchangerate-api.com/v6/${process.env.EXCHANGE_RATE_KEY}/latest/USD`)
        const formatted = res.data as IRates
        const curr = formatted.conversion_rates

        await this.prisma.exchangeRates.create({
            data: {
                exchangeratesapi: JSON.stringify(formatted)
            }
        })

        return curr
    }
   
}
