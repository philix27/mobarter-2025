import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    BankAccount_CreateInput,
    BankAccount_DeleteInput,
    BankAccount_Response,
    BankAccount_DeleteResponse,
} from "./bankAccount.dto";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class BankAccountService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly prisma: PrismaService
    ) {}

    public async create(
        params: { userId: number } & BankAccount_CreateInput
    ): Promise<BankAccount_Response> {
        this.logger.info("Creating bank account");
        try {
            const res = await this.prisma.bankAccount.create({
                data: {
                    account_name: params.accountName,
                    account_no: params.accountNo,
                    user_id: params.userId,
                    bank_name: params.bankName,
                },
            });
            return res;
        } catch (error) {
            throw GqlErr("Could not create bank account");
        }
    }

    public async delete(
        params: { userId: number } & BankAccount_DeleteInput
    ): Promise<BankAccount_DeleteResponse> {
        this.logger.info("Deleting bank account ...");

        try {
            await this.prisma.bankAccount.delete({
                where: {
                    id: params.accountId,
                    user_id: params.userId,
                },
            });

            return {
                message: "Deleted successfully",
            };
        } catch (error) {
            throw GqlErr("Could not delete bank account");
        }
    }

    public async getAll(params: {
        userId: number;
    }): Promise<BankAccount_Response[]> {
        this.logger.info("Fetching all user bank account ...");

        try {
            const res = await this.prisma.bankAccount.findMany({
                where: {
                    user_id: params.userId,
                },
            });
            
            if (res.length > 0) return res;

            return [];
        } catch (error) {
            throw GqlErr("Could not fetch bank account");
        }
    }
}
