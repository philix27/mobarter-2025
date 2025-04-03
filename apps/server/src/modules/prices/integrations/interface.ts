import { $Enums } from "@prisma/client";

export interface ThirdPartyIntegrations {
    createRate: () => Promise<{
        currencyType: $Enums.CurrencyType;
        currencyName: $Enums.CurrencyName;
        buyRate: number;
        sellRate: number;
        trader_id: number;
    }>;

    createTrader: (params: { name: $Enums.MarketName | string }) => {};
}
