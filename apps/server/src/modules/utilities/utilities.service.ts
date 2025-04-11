import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { Utilities_PurchaseAirtimeInput, Utilities_PurchaseAirtimeResponse} from "./utilities.dto";
import { UserInput } from "../../lib";

@Injectable()
export class UtilitiesService {
    public constructor(
        private readonly logger: LoggerService,
    ) {}


    async purchaseAirtime(input: Utilities_PurchaseAirtimeInput & UserInput): Promise<Utilities_PurchaseAirtimeResponse> {
        this.logger.info("Purchase Airtime")
        return {message: ""}    
    }

}
