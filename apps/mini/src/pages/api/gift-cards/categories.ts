import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

import { GiftCardCategoryData } from '@/src/lib/server/GiftCategories'

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<GiftCardCategoryData>
) {
  const url = `https://giftcards.reloadly.com/product-categories`
  const token = process.env.GIFT_CARD_TOKEN

  if (req.method === 'GET') {
    try {
      const response = await axios.get(url, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
      })

      const d = response.data

      res.status(200).json(d)
    } catch (error: any) {
      res.status(404)
    }
  } else {
    res.status(404)
  }
}
