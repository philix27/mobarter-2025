// app/api/hello/route.ts (or .js)
import { NextResponse } from "next/server";
import { dataLinks } from "./data";

export async function GET() {
  return NextResponse.json(dataLinks);
}

// export async function POST(request: Request) {
//   const data = await request.json();
//   return NextResponse.json({ received: data });
// }
