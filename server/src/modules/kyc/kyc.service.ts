import { Injectable } from "@nestjs/common";
import {
    Kyc_AddBvnInput,
    Kyc_AddBvnResponse,
    Kyc_AddNinInput,
    Kyc_AddNinResponse,
    Kyc_CreateTransactionPinInput,
    Kyc_SendEmailOtpInput,
    Kyc_SendEmailResponse,
    Kyc_SendPhoneOtpInput,
    Kyc_VerifyEmailOtpInput,
    Kyc_VerifyEmailResponse,
    Kyc_VerifyPhoneOtpInput,
} from "./kyc.dto";
import { UserInput } from "../../lib";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class KycService {
    public constructor() {} // private readonly notification: NotificationService // private readonly logger: LoggerService

    public async sendPhoneOtp(params: Kyc_SendPhoneOtpInput & UserInput) {
        // this.logger.info("Creating platform account ...");
        throw GqlErr("Unimplemented");
    }

    public async verifyPhoneOtp(params: Kyc_VerifyPhoneOtpInput & UserInput) {
        throw GqlErr("Unimplemented");
    }

    public async createTransactionPin(params: Kyc_CreateTransactionPinInput) {
        throw GqlErr("Unimplemented");
    }

    public async addBvn(
        params: Kyc_AddBvnInput & UserInput
    ): Promise<Kyc_AddBvnResponse> {
        throw GqlErr("Unimplemented");
    }

    public async addNin(
        params: Kyc_AddNinInput & UserInput
    ): Promise<Kyc_AddNinResponse> {
        throw GqlErr("Unimplemented");
    }

    public async sendEmailOtp(
        params: Kyc_SendEmailOtpInput & UserInput
    ): Promise<Kyc_SendEmailResponse> {
        throw GqlErr("Unimplemented");
    }

    public async verifyEmailOtp(
        params: Kyc_VerifyEmailOtpInput & UserInput
    ): Promise<Kyc_VerifyEmailResponse> {
        throw GqlErr("Unimplemented");
    }
}
