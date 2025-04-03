import { GraphQLError } from "graphql";

export const GqlErr = (msg: string) =>
    new GraphQLError(msg, { extensions: { code: "BAD_REQUEST" } });
