import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";

@Injectable()
export class WalletCryptoService {
    public constructor(private readonly logger: LoggerService) {}

    public async createWalletsForNewUser(params: { userId: string }) {
        this.logger.info("Creating platform account ...");

        //    todo: Create Fiat wallets
    }

    public async getWallets(params: { userId: number }) {
        this.logger.info("Retrieve user wallets ...");
        // todo: returns array of wallet and balance
        return [];
    }
}
