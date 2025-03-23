import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import {
    Advert_AdvertResponse,
    Advert_CreateInput,
    Advert_DeleteInput,
    Advert_GetAllInput,
    Advert_GetOneInput,
    Advert_UpdateInput,
} from "./adverts.dto";
import { GqlErr } from "../common/errors/gqlErr";

type User = { userId: number };
@Injectable()
export class AdvertsService {
    public constructor(
        private readonly logger: LoggerService // private readonly notification: NotificationService
    ) {}

    public async getAll(
        params: Advert_GetAllInput & User
    ): Promise<Advert_AdvertResponse[]> {
        this.logger.info("Creating platform account ...");
        throw GqlErr("Unimplemented!");
    }

    public async update(
        params: Advert_UpdateInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info("Creating platform account ...");

        throw GqlErr("Unimplemented!");
        //    todo: Create Account
    }

    public async create(
        params: Advert_CreateInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info("Create advert");
        throw GqlErr("Unimplemented!");
    }

    public async getOne(
        params: Advert_GetOneInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info("Get one advert");
        throw GqlErr("Unimplemented!");
    }

    public async delete(
        params: Advert_DeleteInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info("Deleting advert");
        throw GqlErr("Unimplemented!");
    }
}
