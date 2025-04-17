import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import { Utilities_PurchaseAirtimeInput, Utilities_PurchaseAirtimeResponse} from "./utilities.dto";
import { UserInput } from "../../lib";
import { ReloadlyTopUpService } from "../../lib/integrations/reloadly";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class UtilitiesService {
private reloadly: ReloadlyTopUpService
    public  constructor(
        private readonly logger: LoggerService,
        private readonly prisma: PrismaService,
    ) {
       this.initializeReloadly() 
    }

    private async initializeReloadly() {
        const res = await this.prisma.accessTokens.findFirst({
            where: {
                "platform": "RELOADLY",
                purpose: "AIRTIME"
            }
        })

        if (!res) {
            throw GqlErr("No access token found")
        }
        this.reloadly = new ReloadlyTopUpService(res!.token)
    }

    public  async purchaseAirtime(input: Utilities_PurchaseAirtimeInput & UserInput): Promise<Utilities_PurchaseAirtimeResponse> {
        this.logger.info("Purchase Airtime")
        const res = await this.reloadly.topUpAirtime({
            amount: input.amount.toString(),
            operatorId: input.operator,
            recipientPhone: {
                countryCode: input.countryCode,
                number: input.phoneNo,
            },
            useLocalAmount: true,
            customIdentifier: `userId:${input.userId}&txnHash:${input.transaction_hash}`,
        })

        this.logger.info(res.customIdentifier)
        return {message: ""}    
    }

    public async validateToken() {
        this.logger.info("Validate token")
    }
}
