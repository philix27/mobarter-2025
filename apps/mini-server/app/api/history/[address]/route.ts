import { ITransactions } from "@/app/types/getTxn";
import axios from "axios";
import type { NextApiRequest, NextApiResponse } from "next";
import { isAddress } from "ethers";

export async function GET(
  req: NextApiRequest,
  res: NextApiResponse<ITransactions>,
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
