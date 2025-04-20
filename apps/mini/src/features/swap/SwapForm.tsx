import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { TokenId } from 'src/lib/config'
import { AppStores } from 'src/lib/zustand'

// import { AmountField } from './comps/AmountField'
import { IFormData, initialValues, schema } from './formData'
// import { useSwapQuote } from './hooks/useSwapQuote'
// import { useSwapQuote } from './hooks/useSwapQuote'
import { useTokenOptions } from './useTokenOptions'
import { SwapFormValues } from './types'

export function SwapForm() {
  const store = AppStores.useSwap()
  // const [values, setValues] = useState()
  // const { address, isConnected } = useAccount()
  // const { values, setFieldValue } = useFormikContext<SwapFormValues>()
  const f = useForm<IFormData>({
    resolver: zodResolver(schema),
    defaultValues: {
      ...initialValues,
    },
  })

  // const { allTokenOptions, swappableTokens } = useTokenOptions(values.fromTokenId)
  const { allTokenOptions, swappableTokens } = useTokenOptions(
    f.getValues('fromTokenId') as TokenId
  )
  // const { balance, hasBalance, useMaxBalance } = useTokenBalance(
  //   store.account_balances,
  //   f.getValues('fromTokenId') as TokenId
  // )

  const { amount, direction, fromTokenId, toTokenId, quote } = f.getValues()
  // const { isLoading, quote } = useSwapQuote(
  //   amount,
  //   direction as SwapDirection,
  //   fromTokenId as TokenId,
  //   toTokenId as TokenId
  // )

  // ! Functions

  // const onChangeToken = (isFromToken: boolean) => (tokenId: string) => {
  //   const targetField = isFromToken ? 'fromTokenId' : 'toTokenId'
  //   setFieldValue(targetField, tokenId)
  // }

  // useEffect(() => {
  //   if (!quote || values.quote.toString() === quote) return

  //   // For direction 'in', quote is the output amount
  //   // For direction 'out', quote is the input amount
  //   setFieldValue('quote', quote)
  // }, [quote, setFieldValue, values.quote])

  const onSubmit = (values: IFormData) => {
    store.update({ swap_formValues: values as SwapFormValues, swap_confirmView: true })
  }
  // const validateForm = useFormValidator({
  //   balances: store.account_balances,
  //   isBalanceLoaded,
  //   isWalletConnected,
  // })
  // const debouncedValidateForm = debounce(async (values) => validateForm(values), 100)
  // const initialFormValues = store.swap_formValues || initialValues

  return (
    <form onSubmit={f.handleSubmit(onSubmit)} className="w-full">
      <div className="flex flex-col gap-3 w-full">
        <AppSelect
          label="From Token"
          value={fromTokenId}
          onChange={(v) => {
            // onChangeToken(true)
            f.setValue('fromTokenId', v)
          }}
          data={allTokenOptions.map((val) => {
            return { value: val, label: val }
          })}
        />

        <div className="flex flex-col items-end">
          {/* {hasBalance && (
            <button
              type="button"
              title="Use full balance"
              className="text-xs text-muted hover:underline"
              onClick={useMaxBalance}
            >{`Use Max (${balance})`}</button>
          )} */}
          <Input
            label="Amount"
            autoComplete="off"
            value={amount}
            name={`amount-${direction}`}
            step="any"
            placeholder="0.00"
            onChange={(v) => {
              f.setValue('amount', parseFloat(v.target.value))
            }}
          />
          {/* <AmountField quote={quote} isQuoteLoading={isLoading} direction="in" /> */}
        </div>

        <div className="flex items-center justify-center">
          {/* <div className="flex items-center justify-end px-1.5 text-xs">
            {rate ? `${rate} ${fromTokenId} ~ 1 ${toTokenId}` : '...'}
          </div> */}
        </div>

        <AppSelect
          label="To Token"
          value={toTokenId}
          onChange={(v) => {
            f.setValue('toTokenId', v)
          }}
          data={swappableTokens.map((val) => {
            return { value: val, label: val }
          })}
        />
        <Input
          label="Amount"
          autoComplete="off"
          value={quote}
          name={`amount-${direction}`}
          step="any"
          placeholder="0.00"
          onChange={(v) => {
            f.setValue('quote', parseFloat(v.target.value))
          }}
        />
        {/* <AmountField quote={quote} isQuoteLoading={isLoading} direction="out" /> */}
      </div>
      <div className="flex justify-center w-full my-6 mb-0">
        <Button
          // isWalletConnected={isWalletConnected}
          // isBalanceLoaded={isBalanceLoaded}
          type="submit"
        >
          SubmitButton
        </Button>
      </div>
    </form>
  )
}
