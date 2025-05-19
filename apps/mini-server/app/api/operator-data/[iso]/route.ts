import { IOperators } from "@/app/types/OperatorsData";
import axios from "axios";
import { NextRequest, NextResponse } from "next/server";

// export async function GET(req: NextRequest, res: NextApiResponse) {
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ iso: string }> },
) {
  const { iso } = await params;

  const countryCode = iso as string;
  const url = `https://topups.reloadly.com/operators/countries/${countryCode}`;
  const token = process.env.TOPUP_TOKEN;

  const result = await axios.get(url, {
    params: {
      dataOnly: true,
    },
    headers: {
      "Content-Type": "application/json",
      Accept: "application/com.reloadly.topups-v1+json",
      Authorization: `Bearer ${token}`,
    },
  });

  // .then(({ data }) => {
  //   return
  return NextResponse.json(result.data as IOperators);
  // })
  // .catch((err) => {
  //   console.error("Err: X34", err.message);
  //   return NextResponse.json(
  //     { message: `Operator error: ${err.message}` },
  //     {
  //       status: 400,
  //     },
  //   );
  // });
}
