import { NextRequest, NextResponse } from "next/server";
import { CeloTokens } from "./celoTokens";
import { getBalance } from "./getBalance";
import { NextApiResponse } from "next/types";
import { isAddress } from "viem";

export async function GET(req: NextRequest, res: NextApiResponse) {
  const searchParams = req.nextUrl.searchParams;
  const address = searchParams.get("address");

  console.log("Wallet Address X45: ", address);
  if (address === undefined || !isAddress(address!)) {
    console.log("User Wallet Address X45: ", address);
    throw new Error("User address needed");
  }

  const addr = address;
  const celoItems = CeloTokens.map((val) => {
    return { ...val, chianId: 42220 };
  });
  const list = [];

  for (const token of celoItems) {
    const balance = await getBalance({
      address: addr,
      chianId: token.chianId.toString(),
      tokenAddress: token.address,
    }); // getBalance is async
    list.push({ ...token, balance });
  }

  return NextResponse.json(list);
}
