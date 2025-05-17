import { IOperators } from "@/app/types/OperatorsData";
import axios from "axios";
import type { NextApiRequest, NextApiResponse } from "next";

export async function GET(
  req: NextApiRequest,
  res: NextApiResponse<IOperators>,
) {
  const { iso } = req.query;
  const countryCode = iso as string;
  const url = `https://topups.reloadly.com/operators/countries/${countryCode}`;
  const token = process.env.TOPUP_TOKEN;

  // Process a POST request
  const response = await axios.get(url, {
    params: {
      bundlesOnly: true,
    },
    headers: {
      "Content-Type": "application/json",
      Accept: "application/com.reloadly.topups-v1+json",
      Authorization: `Bearer ${token}`,
    },
  });

  const d = response.data;
  res.status(200).json(d);
}
