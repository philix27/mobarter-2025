import {
    ArgumentsHost,
    Catch,
    ExceptionFilter,
    HttpException,
} from "@nestjs/common";
import { GqlArgumentsHost } from "@nestjs/graphql";
import { GraphQLError } from "graphql";

@Catch(HttpException)
export class GraphQLExceptionFilter implements ExceptionFilter {
    // public constructor(private readonly logger: LoggerService) {}

    catch(exception: HttpException, host: ArgumentsHost) {
        const gqlHost = GqlArgumentsHost.create(host);

        const response = exception.getResponse() as any;
        const message = response.message || "An error occurred";
        console.error(
            `Handler: ${gqlHost.getHandler().name} message: ${message}`
        );
        return new GraphQLError(message, {
            extensions: {
                code:
                    exception.getStatus() === 400
                        ? "BAD_REQUEST"
                        : "INTERNAL_SERVER_ERROR",
                response,
            },
        });
    }
}
