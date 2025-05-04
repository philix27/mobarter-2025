import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

import { IUtilityBillData } from '@/src/lib/server'

export default async function handler(req: NextApiRequest, res: NextApiResponse<IUtilityBillData>) {
  const url = `https://utilities.reloadly.com/billers`
  const token = process.env.UTILITY_TOKEN

  if (req.method === 'GET') {
    try {
      const response = await axios.get(url, {
        params: {
          type: 'ELECTRICITY_BILL_PAYMENT',
          countryISOCode: 'NG',
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
