import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";
import { GqlExecutionContext } from "@nestjs/graphql";
import { HelperService } from "../../helper/helper.service";
import { GqlErr } from "../errors/gqlErr";


@Injectable()
export class VendorGuard implements CanActivate {
    constructor(private readonly jwt: HelperService) {}

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
}
