import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import { PrivyWalletService } from "./privy.service";
import { $Enums } from "@prisma/client";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class WalletCryptoService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly prisma: PrismaService,
        private readonly privy: PrivyWalletService
    ) {}

    public async createWalletsForNewUser(params: { userId: number }) {
        this.logger.info("Creating crypto wallet accounts ...");

        const userWallets = await this.prisma.cryptoWallets.findMany({
            where: {
                user_id: params.userId,
            },
        });
        console.log("wallets: ", userWallets);
        if (userWallets.length > 1) {
            throw GqlErr("User already has wallets");
        }

        // todo: should never execute until app goes live
        if (params.userId === undefined) {
            const ethWallet = await this.createEthereumWallet({
                userId: params.userId,
            });
            const solWallet = await this.createSolanaWallet({
                userId: params.userId,
            });
            return [ethWallet, solWallet];
        }

        const ethWallet = {
            id: 1,
            address: "ethWallet",
            wallet_id: "string;",
            chainType: $Enums.ChainType.Ethereum,
            user_id: params.userId,
        };
        const solWallet = {
            id: 1,
            address: "solWallet",
            wallet_id: "wallet_id;",
            chainType: $Enums.ChainType.Solana,
            user_id: params.userId,
        };

        return [ethWallet, solWallet];
    }

    private async createEthereumWallet(params: { userId: number }) {
        this.logger.info("Creating ethereum wallet");

        const wallet = await this.privy.createWallet("ethereum");

        const cryptoWallets = await this.prisma.cryptoWallets.create({
            data: {
                user_id: params.userId,
                address: wallet.address,
                wallet_id: wallet.id,
                chainType: "Ethereum",
            },
        });
        return cryptoWallets;
    }

    private async createSolanaWallet(params: { userId: number }) {
        this.logger.info("Creating ethereum wallet");

        const wallet = await this.privy.createWallet("solana");

        const cryptoWallets = await this.prisma.cryptoWallets.create({
            data: {
                user_id: params.userId,
                address: wallet.address,
                wallet_id: wallet.id,
                chainType: "Solana",
            },
        });
        return cryptoWallets;
    }

    public async getWallets(params: { userId: number }): Promise<
        {
            id: number;
            address: string;
            wallet_id: string;
            chainType: $Enums.ChainType;
        }[]
    > {
        this.logger.info("Retrieve user wallets ...");

        const wallets = await this.prisma.cryptoWallets.findMany({
            where: {
                user_id: params.userId,
            },
        });
        console.log("wallets: ", wallets);
        return wallets;
    }
}
