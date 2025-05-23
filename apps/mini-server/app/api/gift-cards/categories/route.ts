import { GiftCardCategoryData } from "@/app/types/GiftCategories";
import axios from "axios";
import type { NextApiRequest, NextApiResponse } from "next";

export async function GET(
  req: NextApiRequest,
  res: NextApiResponse<GiftCardCategoryData>,
) {
  const url = `https://giftcards.reloadly.com/product-categories`;
  const token = process.env.GIFT_CARD_TOKEN;

  try {
    const response = await axios.get(url, {
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
