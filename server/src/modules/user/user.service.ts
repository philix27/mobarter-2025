import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    UserDto,
    UserCreate,
    UserGetInfo,
    UserResetPassword,
} from "./user.dto";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class UserService {
    private prisma: PrismaService;

    public constructor(private readonly logger: LoggerService) {}

    public async create(params: UserCreate) {
        this.logger.info("Creating platform account ...");
        //todo: hashPassword

        try {
            this.logger.info("User Params: " + JSON.stringify(params));
            const user = await this.prisma.user.create({
                data: {
                    firstname: params.firstname,
                    lastname: params.lastname,
                    // middlename: params.middlename,
                    email: params.email,
                    password: params.password,
                    country: params.country,
                },
            });

            // const { password, created_at, updated_at, ...rest } = user;
            return user;
        } catch (error: any) {
            this.logger.error("Could not create user account: " + error);
            throw GqlErr("Could not create user: " + error.message);
        }
    }

    public async getInfo(params: UserGetInfo): Promise<UserDto> {
        this.logger.info("Fetching platform one account");

        const data = await this.prisma.user.findFirst({
            where: {
                id: params.userId!,
            },
        });

        if (!data) throw new Error("No user found");

        return data as UserDto;
    }

    public async updatePassword(params: UserResetPassword) {
        this.logger.info("Updating platform one account");

        try {
            const hashedPassword = this.validateAndHashPassword(
                params.newPassword,
                params.confirmNewPassword
            );

            const user = await this.prisma.user.findFirst({
                where: {
                    email: params.email,
                },
            });

            if (!user) throw new Error("User not found");

            const res = await this.prisma.user.update({
                where: {
                    id: user.id,
                },
                data: {
                    password: hashedPassword,
                },
            });

            return res;
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
        }
    }

    private validateAndHashPassword(password: string, confirmPassword: string) {
        if (password !== confirmPassword) {
            throw new Error("Passwords doesn't match");
        }

        // todo: hash password
        return password;
    }
}
