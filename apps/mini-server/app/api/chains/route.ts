// app/api/hello/route.ts (or .js)
import { NextResponse } from "next/server";
import { allChains } from "./chains";

export async function GET() {
  return NextResponse.json(allChains);
}

// export async function POST(request: Request) {
//   const data = await request.json();
//   return NextResponse.json({ received: data });
// }
