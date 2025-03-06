import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import {
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./wallet.dto";

@Injectable()
export class WalletService {
    public constructor(private readonly logger: LoggerService) {}

    public async createCryptoWalletsForNewUser(params: Auth_sendEmailOtp) {
        this.logger.info("Creating platform account ...");
        //    todo: Create Crypto wallets
    }

    public async createFiatWalletsForNewUser(params: Auth_verifyEmailOtp) {
        this.logger.info("Creating platform account ...");

        //    todo: Create Fiat wallets
    }

    public async getCryptoWallets(params: Auth_ResetPassword) {
        // todo: returns array of wallet and balance
    }

    public async getFiatWallets(params: Auth_ResetPassword) {
        // todo: returns array of wallet and balance
    }

    public async createNewCryptoWallet(params: Auth_ResetPassword) {
        // todo: returns array of wallet and balance
    }
}
