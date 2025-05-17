// app/api/hello/route.ts (or .js)
import { NextResponse } from "next/server";
import { CeloTokens } from "./celoTokens";

export async function GET() {
  const celoItems = CeloTokens.map((val) => {
    return { ...val, chianId: 42220 };
  });
  return NextResponse.json(celoItems);
}
