import { useQuery } from '@apollo/client'
import { FxRate_GetAllDocument, QueryResponse } from '@repo/api'
import { useState } from 'react'

import { logger } from '../lib/utils'

const PROFIT_MARGIN = 20
export function usePrice() {
  const [amountToPay, setAmtToPay] = useState(0)
  const { data: fxData, error } = useQuery<QueryResponse<'fxRate_GetAll'>>(FxRate_GetAllDocument)

  if (error) {
    logger.error('Error getting rate: ' + error.message)
  }
  if (!fxData)
    return {
      cusdAmt: 0,
      handleOnChange: () => {
        return
      },
    }

  const rate = fxData!.fxRate_GetAll.NGN + PROFIT_MARGIN

  const handleOnChange = (amountInFiatCurrency: number) => {
    const c = amountInFiatCurrency / rate

    setAmtToPay(c)
  }

  return { amountToPay, handleOnChange }
}
