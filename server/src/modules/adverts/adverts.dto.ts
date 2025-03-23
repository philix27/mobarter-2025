import { Field, ID, InputType, ObjectType, PartialType } from "@nestjs/graphql";

@InputType()
export class Advert_CreateInput {
    @Field({ nullable: false })
    upperLimit: string;

    @Field({ nullable: false })
    lowerLimit: string;

    @Field({ nullable: false })
    rate: string;

    @Field({ nullable: false })
    state: string;

    @Field({ nullable: false })
    currency: string;
}

@ObjectType()
export class AdvertDto extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_UpdateStatusInput extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_UpdateInput extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_DeleteInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_GetAllInput {
    @Field({nullable: true})
    filter?: string;
}

@ObjectType()
export class Advert_AdvertResponse extends PartialType(
    Advert_CreateInput,
    ObjectType
) {}

@InputType()
export class Advert_GetOneInput {
    @Field((type) => ID)
    id: number;
}
