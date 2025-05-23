import { NextResponse } from "next/server";
import axios from "axios";

export type FxRate_GetAllQuery = {
  __typename?: "Query";
  fxRate_GetAll: {
    __typename?: "ExchangeRate_Response";
    GH: number;
    NG: number;
    KE: number;
    UG: number;
    MW: number;
    TZ: number;
    ZA: number;
    USD: number;
    EUR: number;
  };
};

const Docs = `
query FxRate_GetAll {
    fxRate_GetAll {
              GH
              NG
              KE
              UG
              MW
              TZ
              ZA
              USD
              EUR
            }
}`;

const token = process.env.BACKEND_SERVER_TOKEN;
const uri = process.env.BACKEND_SERVER_GQL_ENDPOINT!;
export async function GET() {
  const res = await axios.post(
    uri,
    { query: Docs },
    {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    },
  );

  const d = res.data;

  const dd = d as { data: FxRate_GetAllQuery };
  return NextResponse.json(dd);
}
