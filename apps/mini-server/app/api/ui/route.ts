import { NextResponse } from "next/server";
import axios from "axios";
import { uiData } from "./data";

export async function GET() {
  return NextResponse.json(uiData);
}
