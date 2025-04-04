import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import axios from "axios";
import { IRates } from "./types";
import { ExchangeRate_Response } from "./rates.dto";

@Injectable()
export class ExchangeRateService {
    public constructor(private readonly logger: LoggerService) {}
    
    // Runs at every 1 hour
    async getRates( ) : Promise<ExchangeRate_Response> {
    this.logger.info("Fetching new exchange rate")
    const res = await axios.get(`https://v6.exchangerate-api.com/v6/${process.env.EXCHANGE_RATE_KEY}/latest/USD`)
        const formatted = res.data as IRates
        const curr = formatted.conversion_rates
        return {
            "EUR": curr.EUR,
            NGN: curr.NGN, 
            USD: curr.USD,
            KES: curr.KES,
            GHS : curr.GHS
        }

}

   
}
