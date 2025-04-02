import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import { PrivyWalletService } from "./privy.service";
import { ChainType } from "@prisma/client";
import { GqlErr } from "../common/errors/gqlErr";
import { WalletCryptoResponse } from "./crypto.dto";

@Injectable()
export class WalletCryptoService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly prisma: PrismaService,
        private readonly privy: PrivyWalletService
    ) {}

    public async createWalletsForNewUser(params: {
        userId: number;
    }): Promise<WalletCryptoResponse[]> {
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
            [ethWallet, solWallet];
        }

        const ethWallet: WalletCryptoResponse = {
            id: 1,
            address: "ethWallet",
            wallet_id: "string;",
            chainType: ChainType.Ethereum,
            minipay: true,
        };
        const solWallet: WalletCryptoResponse = {
            id: 1,
            address: "solWallet",
            wallet_id: "wallet_id;",
            chainType: ChainType.Solana,
            minipay: true,
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

    public async getWallets(params: {
        userId: number;
    }): Promise<WalletCryptoResponse[]> {
        this.logger.info("Retrieve user wallets ...");

        const wallets = await this.prisma.cryptoWallets.findMany({
            where: {
                user_id: params.userId,
            },
        });

        const _wallets: WalletCryptoResponse[] = wallets.map((val) => {
            return {
                id: val.id,
                address: val.address,
                chainType: val.chainType,
                minipay: val.minipay!,
            };
        });
        return _wallets;
    }
}
