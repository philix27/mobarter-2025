// app/api/hello/route.ts (or .js)
import { NextResponse } from "next/server";
import { dataLinks } from "./data";

export async function GET() {
  return NextResponse.json(dataLinks);
}
