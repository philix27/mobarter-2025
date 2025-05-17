// app/api/hello/route.ts (or .js)
import { NextResponse } from "next/server";
import { NG_BANKS_LIST } from "./banks";

export async function GET() {
  return NextResponse.json(NG_BANKS_LIST);
}
