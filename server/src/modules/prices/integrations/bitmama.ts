import { $Enums } from "@prisma/client";
import { ThirdPartyIntegrations } from "./interface";
import axios from "axios";

export type RateResult = {
    status: string;
    message: string;
    data: {
        fee: number;
        deductedFee: number;
        buyAmount: number;
        exchangedVolume: number;
        rate: number;
    };
};

export class Bitmama implements ThirdPartyIntegrations {
    createTrader: (params: { name: string }) => {};
    ticker: {
        buy: "usdngn";
        sell: "cusdngn";
    };
    url = {
        buy: "https://walletapp.bitmama.io/buySell/buy/rate",
        sell: "https://walletapp.bitmama.io/buySell/sell/rate",
    };

    body = {
        coin: "cusd",
        currency: "ngn",
        price: 0,
        fiatCurrency: "ngn",
        amountOfCryptoToSell: 1,
    };

    params = {
        params: {
            "bitmama-oracle-tracker": "m7p2xz8d",
        },
    };

    async createRate(): Promise<{
        currencyType: $Enums.CurrencyType;
        currencyName: $Enums.CurrencyName;
        buyRate: number;
        sellRate: number;
        trader_id: number;
    }> {
        const buy = await this.buyRate();
        const sell = await this.sellRate();

        return {
            currencyName: "CUSD",
            currencyType: "CRYPTO",
            buyRate: buy.data.rate,
            sellRate: sell.data.rate,
            trader_id: 1,
        };
    }

    private async buyRate() {
        const res = await axios.post(
            this.url["buy"],
            {
                ...this.body,
                ticker: this.ticker["buy"],
            },
            { params: this.params }
        );

        return res.data as RateResult;
    }

    private async sellRate() {
        const res = await axios.post(
            this.url["sell"],
            {
                ...this.body,
                ticker: this.ticker["sell"],
            },
            { params: this.params }
        );

        return res.data as RateResult;
    }
}
