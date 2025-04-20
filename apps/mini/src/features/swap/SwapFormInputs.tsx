import { useFormikContext } from 'formik'
import { useEffect } from 'react'
import { AppSelect } from 'src/components/Select'
import { AccountBalances } from 'src/lib/zustand/swap'

import { AmountField } from './comps/AmountField'
import { useSwapQuote } from './hooks/useSwapQuote'
import { useTokenBalance } from './hooks/useTokenBalance'
import { useTokenOptions } from './hooks/useTokenOptions'
import { SwapFormValues } from './types'

interface Props {
  balances: AccountBalances
}

export function SwapFormInputs({ balances }: Props) {
  const { values, setFieldValue } = useFormikContext<SwapFormValues>()
  const { allTokenOptions, swappableTokens } = useTokenOptions(values.fromTokenId)
  const { balance, hasBalance, useMaxBalance } = useTokenBalance(balances, values.fromTokenId)

  const onChangeToken = (isFromToken: boolean) => (tokenId: string) => {
    const targetField = isFromToken ? 'fromTokenId' : 'toTokenId'
    setFieldValue(targetField, tokenId)
  }

  const { amount, direction, fromTokenId, toTokenId } = values
  const { isLoading, quote, rate } = useSwapQuote(amount, direction, fromTokenId, toTokenId)

  useEffect(() => {
    if (!quote || values.quote === quote) return

    // For direction 'in', quote is the output amount
    // For direction 'out', quote is the input amount
    setFieldValue('quote', quote)
  }, [quote, setFieldValue, values.quote])

  return (
    <div className="flex flex-col gap-3 w-full">
      <AppSelect
        label="From Token"
        onChange={() => {
          onChangeToken(true)
        }}
        data={allTokenOptions.map((val) => {
          return { value: val, label: val }
        })}
      />

      <div className="flex flex-col items-end">
        {hasBalance && (
          <button
            type="button"
            title="Use full balance"
            className="text-xs text-muted hover:underline"
            onClick={useMaxBalance}
          >{`Use Max (${balance})`}</button>
        )}
        <AmountField quote={quote} isQuoteLoading={isLoading} direction="in" />
      </div>

      <div className="flex items-center justify-center">
        <div className="flex items-center justify-end px-1.5 text-xs">
          {rate ? `${rate} ${fromTokenId} ~ 1 ${toTokenId}` : '...'}
        </div>
      </div>

      <AppSelect
        label="To Token"
        onChange={() => {
          onChangeToken(false)
        }}
        data={swappableTokens.map((val) => {
          return { value: val, label: val }
        })}
      />
      <AmountField quote={quote} isQuoteLoading={isLoading} direction="out" />
    </div>
  )
}
