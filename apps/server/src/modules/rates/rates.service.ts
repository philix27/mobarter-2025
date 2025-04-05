import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import axios from "axios";
import { IRates } from "./types";
import { ExchangeRate_Response } from "./rates.dto";

const oneHourAgo = new Date(Date.now() - 60 * 60 * 1000);
 
@Injectable()
export class ExchangeRateService {
    public constructor(private readonly logger: LoggerService,
        private readonly prisma: PrismaService) { }
    

    async getRates(): Promise<ExchangeRate_Response> {
        this.logger.info("GetRates: Using fx cache")
        
        const last_rate = await this.prisma.exchangeRates.findFirst({
              orderBy: { created_at: "desc" },
          
        })

        const cacheResult = JSON.parse(last_rate!.exchangeratesapi!) as IRates 
        const curr = cacheResult.conversion_rates
          
            return {
                "EUR": curr.EUR,
                NGN: curr.NGN, 
                USD: curr.USD,
                KES: curr.KES,
                GHS : curr.GHS
            }

    }

    async updateRates() {
        this.logger.info("Updating rates")
        
        const last_rate = await this.prisma.exchangeRates.findFirst({
                orderBy: { created_at: "desc" },    
        })

        if (last_rate && last_rate!.created_at! < oneHourAgo)  return;
        
        await this.getFx()
    }

    private async getFx() {
        this.logger.info("Pulling fx data")
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
