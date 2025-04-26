import { useQuery } from '@apollo/client'
import { FxRate_GetAllDocument, QueryResponse } from '@repo/api'
import { useState } from 'react'

const PROFIT_MARGIN = 20
export function usePrice() {
  const [amountToPay, setAmtToPay] = useState(0)
  const { data: fxData } = useQuery<QueryResponse<'fxRate_GetAll'>>(FxRate_GetAllDocument)

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
