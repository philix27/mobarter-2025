import { Injectable } from "@nestjs/common";
// import { PrivyClient } from "@privy-io/server-auth";
import { LoggerService,  } from "../common";

@Injectable()
export class PrivyWalletService {
    // client: PrivyClient;
    client: any;

    public constructor(private readonly logger: LoggerService) {
        this.init();
    }

    private async init() {
        // this.client = new PrivyClient(
        //     secrets.PRIVY_APP_ID,
        //     secrets.PRIVY_APP_SECRET,
        //     {
        //         walletApi: {
        //             authorizationPrivateKey: secrets.PRIVY_AUTH_KEY,
        //         },
        //     }
        // );

        this.logger.info("Initialized");
    }

    async createWallet(chainType: "ethereum" | "solana") {
        const walletInfo = await this.client.walletApi.create({
            chainType,
        });
        this.logger.info("Wallet created: " + JSON.stringify(walletInfo));
        return walletInfo;
    }

    async signMsg(params: {
        id: string;
        msg: string;
        method: "personal_sign" | string; 
    }) {
        const res = await this.client.walletApi.rpc({
            walletId: params.id,
            //@ts-ignore
            method: params.method,
            params: {
                //@ts-ignore
                message: params.msg,
            },
        });

        this.logger.info("Signed Msg:" + params.id);
        //@ts-ignore
        return res.data;
    }

    async transferFunds(params: {
        walletId: string;
        to: string;
        value: number;
        chainId: number;
    }) {
        const res = await this.client.walletApi.rpc({
            // Your wallet ID (not address), returned during creation
            walletId: params.walletId,
            method: "eth_sendTransaction",
            caip2: "eip155:11155111",
            params: {
                transaction: {
                    //@ts-ignore
                    to: params.to,
                    value: params.value,
                    chainId: params.chainId,
                },
            },
        });
        this.logger.info(
            "TransferFunds To: ".concat(
                params.to,
                " Amount: ",
                params.value.toString()
            )
        );
        //@ts-ignore
        return res.data;
    }
}
