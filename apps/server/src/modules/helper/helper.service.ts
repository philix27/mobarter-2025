import { Injectable } from "@nestjs/common";
import { CryptoService } from "./crypto.service";

@Injectable()
export class HelperService extends CryptoService {}
