// jwks.service.ts
import { Injectable } from "@nestjs/common";
// import * as fs from "fs";
import * as jose from "node-jose";

@Injectable()
export class JwksService {
    private keystore: jose.JWK.KeyStore;

    constructor() {
        this.keystore = jose.JWK.createKeyStore();
        this.loadPublicKey();
    }

    private async loadPublicKey() {
       
        // const publicKeyPem = fs.readFileSync("public.key", "utf8");
        //  const rawKey = process.env.JWT_TELEGRAM_PUBLIC!.replace(/\\n/g, '\n');
        const rawKey = process.env.JWT_TELEGRAM_PUBLIC!
        await this.keystore.add(rawKey, "pem");
    }

    getJWKS() {
        return this.keystore.toJSON();
    }
}
