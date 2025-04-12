import { Field,  InputType,  ObjectType, } from "@nestjs/graphql";

@ObjectType()
export class Telegram_GenerateTokenResponse {
    @Field()
    token: string;
}

@InputType()
export class Telegram_GenerateTokenInput {
    @Field({nullable: false})
    username: string;

    @Field({nullable: false})
    id: string;

    @Field({nullable: false})
    photo_url?: string;

    @Field({nullable: false})
    first_name?: string;

    @Field({nullable: false})
    last_name?: string;

    @Field({nullable: false})
    isMocked: boolean;

    @Field({nullable: false})
    initDataRaw: string;
}