import { $Enums } from "@prisma/client";
import { ThirdPartyIntegrations } from "./interface";

export class CashRamp implements ThirdPartyIntegrations {
    createRate: () => Promise<{
        currencyType: $Enums.CurrencyType;
        currencyName: $Enums.CurrencyName;
        buyRate: number;
        sellRate: number;
        trader_id: number;
    }>;

    createTrader: (params: { name: string }) => {};
}
