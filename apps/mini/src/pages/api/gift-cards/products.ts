import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

import { GiftCardsResult } from '@/src/lib/server'

export default async function handler(req: NextApiRequest, res: NextApiResponse<GiftCardsResult>) {
  const url = ` https://giftcards.reloadly.com/products`
  const token = process.env.GIFT_CARD_TOKEN
  // const { productCategoryId } = req.query
  if (req.method === 'GET') {
    try {
      const response = await axios.get(url, {
        params: {
          countryCode: 'NG',
          size: 40,
          // productCategoryId: productCategoryId,
        },
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
