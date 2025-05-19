import { ITransactions } from "@/app/types/getTxn";
import axios from "axios";
import { isAddress } from "ethers";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  req: NextRequest,
  res: NextResponse<ITransactions>,
) {
  const { address } = req.query;
  const add = address as string;

  if (!isAddress(add)) {
    res.status(300);
    throw new Error("Invalid address");
  }

  // Process a POST request
  const response = await axios.get("https://explorer.celo.org/api", {
    params: {
      module: "account",
      action: "txlist",
      address: address,
      startblock: 0,
      endblock: 99999999,
      sort: "desc",
    },
    headers: {
      Accept: "*/*",
    },
  });

  const d = response.data;
  res.status(200).json(d);
}
