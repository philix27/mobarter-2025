import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";
import { GqlExecutionContext } from "@nestjs/graphql";
import { HelperService } from "../../helper/helper.service";
import { GqlErr } from "../errors/gqlErr";


@Injectable()
export class GqlAuthGuard implements CanActivate {
    constructor(private readonly jwt: HelperService) {}

    async getRequest(context: ExecutionContext) {
        const ctx = GqlExecutionContext.create(context);

        const ob = ctx.getContext().req.raw.rawHeaders;

        const redefinedOb = ob as string[];
        const token = redefinedOb.filter((val) => val.includes("Bearer"))[0];

        if (!token.length) throw GqlErr("No authorization token");

        const isValid = this.jwt.verifyToken(token);

        console.log("Is it valid:", isValid);
        if (!isValid) throw GqlErr("Unauthorized!");

        return ctx.getContext().req; // Extract request object
    }

    async canActivate(context: ExecutionContext): Promise<boolean> {
        const ctx = GqlExecutionContext.create(context);

        const ob = ctx.getContext().req.raw.rawHeaders;

        const redefinedOb = ob as string[];
        const token = redefinedOb.filter((val) => val.includes("Bearer"))[0];

        if (!token || token.trim() === "") {
            throw GqlErr("Please provide token");
        }
        const authToken = token.replace(/Bearer/gim, "").trim();

        const isValid = this.jwt.verifyToken(authToken);

        if (!isValid) throw GqlErr("Unauthorized!");

        const user = this.jwt.verifyToken(authToken);
        if (!user) throw GqlErr("User not found");
        // console.log("user:", user);
        ctx.getContext().req = user;
        return ctx.getContext().req;
    }
    // async canActivate(context: ExecutionContext): Promise<boolean> {
    //     try {
    //         const request = context.switchToHttp().getRequest();
    //         const { authorization }: any = request.headers;
    //         if (!authorization || authorization.trim() === "") {
    //             throw new UnauthorizedException("Please provide token");
    //         }
    //         const authToken = authorization.replace(/Bearer/gim, "").trim();
    //         const resp = await this.jwt.verifyToken(authToken);
    //         request.decodedData = resp;
    //         return true;
    //     } catch (error) {
    //         console.log("auth error - ", error.message);
    //         throw new ForbiddenException(
    //             error.message || "session expired! Please sign In"
    //         );
    //     }
    // }
}
