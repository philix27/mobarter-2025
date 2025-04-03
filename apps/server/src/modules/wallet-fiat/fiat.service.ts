import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { $Enums } from "@prisma/client";

@Injectable()
export class WalletFiatService {
    public constructor(private readonly logger: LoggerService) {}

    public async createWalletsForNewUser(params: {
        id: number;
        firstname: string;
        lastname: string;
        email: string;
        country: $Enums.Country;
    }) {
        this.logger.info("Creating fiat wallet accounts ...");

        //    todo: Create Fiat wallets
    }

    public async getWallets(params: { userId: number }) {
        this.logger.info("Retrieve user wallets ...");
        // todo: returns array of wallet and balance
        return [];
    }
}
