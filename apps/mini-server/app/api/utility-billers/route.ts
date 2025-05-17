import { IUtilityBillData } from "@/app/types/ElectricityBill";
import axios from "axios";
import type { NextApiRequest, NextApiResponse } from "next";

export async function GET(
  req: NextApiRequest,
  res: NextApiResponse<IUtilityBillData>,
) {
  const url = `https://utilities.reloadly.com/billers`;
  const token = process.env.UTILITY_TOKEN;

  try {
    const response = await axios.get(url, {
      params: {
        type: "ELECTRICITY_BILL_PAYMENT",
        countryISOCode: "NG",
      },
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    });

    const d = response.data;

    res.status(200).json(d);
  } catch (error: any) {
    res.status(404);
  }
}
