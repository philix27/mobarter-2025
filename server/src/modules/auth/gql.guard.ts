import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";
// import { AuthGuard } from "@nestjs/passport";
import { GqlExecutionContext } from "@nestjs/graphql";
import { JwtCryptoService } from "./jwt.service";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class GqlAuthGuard implements CanActivate {
    // export class GqlAuthGuard extends AuthGuard("jwt") {
    // private readonly authService: JwtCryptoService;
    constructor(private readonly jwt: JwtCryptoService) {}

    async getRequest(context: ExecutionContext) {
        console.log("In getRequest");

        const ctx = GqlExecutionContext.create(context);
        console.log("After init GqlExecutionContext");
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
        console.log("h1 authorization: ");
        const ctx = GqlExecutionContext.create(context);
        // const request = context.switchToHttp().getRequest();
        // console.log("h2 authorization: ", request);
        // const { authorization }: any = request.headers;
        //  console.log("h4 authorization: ", authorization);

        const ob = ctx.getContext().req.raw.rawHeaders;

        const redefinedOb = ob as string[];
        const token = redefinedOb.filter((val) => val.includes("Bearer"))[0];

        if (!token || token.trim() === "") {
            throw GqlErr("Please provide token");
        }
        const authToken = token.replace(/Bearer/gim, "").trim();

        // const resp = await this.jwt.verifyToken(authToken);

        const isValid = this.jwt.verifyToken(authToken);

        if (!isValid) throw GqlErr("Unauthorized!");

        const user = this.jwt.verifyToken(authToken);
        if (!user) throw GqlErr("User not found");

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
