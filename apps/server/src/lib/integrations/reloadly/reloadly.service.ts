import { Injectable } from "@nestjs/common";
import { localOperators } from "./localOperators";
import axios, { AxiosInstance } from "axios";
import { ITopUpAirtime } from "./t.topUpAirtime";

export type ReloadlyCountryCode =  "NG" | "KE" | "GH"
export type IReloadlyOperatorId = "MTN" | "AIRTEL" | "GLO" | "ETISALAT"
export const OperatorId: Record<IReloadlyOperatorId, string> = {
    "ETISALAT":"340",
    "MTN":"341",
    "AIRTEL":"342",
    "GLO":"344",
}

@Injectable()
export class ReloadlyTopUpService {
    baseURL ='https://topups.reloadly.com'
     api :AxiosInstance 

    constructor(readonly accessToken: string) {
          this.api  = axios.create({
  baseURL: this.baseURL,
  headers: {
      Authorization: `Bearer ${accessToken}`
    }
});
    }
getOperators(props: {iso: "NG" | "KE" | "GH"}) {
    return localOperators.filter(val => val.country.isoName === props.iso)
}
async topUpAirtime(props: {
    //  amount should have 2 place decimal number
    amount: string;
    operatorId: keyof typeof OperatorId;
    customIdentifier: string;
    useLocalAmount: boolean;
    recipientPhone: {
         /** 2 values isoName */
        countryCode: ReloadlyCountryCode
        /** should include country phone no. code without the +
        * e.g2348101234567
         */
        number: string
    },
        senderPhone?: {countryCode: ReloadlyCountryCode, number: string}
  }) {
       const res = await this.api.post("/topups", props, {headers: {}} )
       return res.data as ITopUpAirtime
   }
    
    async createAccessToken() {
        const res =await axios.post("https://auth.reloadly.com/oauth/token", {
    client_id: process.env.RELOADLY_CLIENT_ID,
    client_secret: process.env.RELOADLY_CLIENT_SECRET,
    grant_type: 'client_credentials',
    audience:  this.baseURL
        })
        return  res.data
    }
}
