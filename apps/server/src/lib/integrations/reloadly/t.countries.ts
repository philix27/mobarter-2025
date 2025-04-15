export type Countries = Country[];

export interface Country {
  isoName: string;
  name: string;
  continent: string;
  currencyCode: string;
  currencyName: string;
  currencySymbol: string;
  flag: string;
  callingCodes: string[];
}


export interface IGetToken {
  access_token: string;
  scope: string;
  expires_in: number;
  token_type: string;
}


export type IMethods = "POST" | "GET"