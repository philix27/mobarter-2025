import { NextRequest, NextResponse } from "next/server";
import { logger } from "@/app/logger";
import axios from "axios";

export async function GET(req: NextRequest, res: NextResponse) {
  const searchParams = req.nextUrl.searchParams;
  const acctNo = searchParams.get("bank_code");
  const code = searchParams.get("account_number");

  try {
    const response = await axios.get(
      `https://nubapi.com/api/verify?account_number=${acctNo}&bank_code=${code}`,
      {
        headers: {
          Authorization: `Bearer ${process.env.NUBAPI}`,
          "Content-Type": "application/json",
        },
      },
    );

    return NextResponse.json(response.data);
  } catch (error) {
    logger.error(error);
  }
}
