import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { ChainId, getTokenAddress, TokenAddresses, TokenId } from 'src/lib/config'
import { AppStores } from 'src/lib/zustand'
import { IFormData, initialValues, schema } from './formData'
// import { useSwapQuote } from './hooks/useSwapQuote'
import { useTokenOptions } from './useTokenOptions'
import {  SwapFormValues } from './types'
import { Card, Label } from '@/src/components/comps'
import { useBalance } from 'wagmi'
import { useAppContext } from '@/src/Root/context'
import {  formatEtherBalance } from '@/src/lib/utils'
import { useMento } from './node'
import { useState } from 'react'

const useTokenBalanceX =  (selectedToken: TokenId) => {
  const { evmAddress } = useAppContext()
  
   const { data,isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(selectedToken, ChainId.Celo) as `0x${string}`,
  })

  return {balance: data, isLoading}
}
export function SwapForm() {
    const [selectedTokenFrom, setTokenFrom] = useState('CELO')
    const [selectedTokenTo, setTokenTo] = useState('CELO')
  const store = AppStores.useSwap()
  const f = useForm<IFormData>({
    resolver: zodResolver(schema),
    defaultValues: {
      ...initialValues,
    },
  })
const {balance, isLoading} = useTokenBalanceX(selectedTokenFrom as TokenId)

  const { allTokenOptions, swappableTokens, } = useTokenOptions(
    f.getValues('fromTokenId') as TokenId
  )
  
  const { amount,  } = f.getValues()
  const m = useMento({
    "amount": `${amount}`,
    fromTokenAddr: TokenAddresses[ChainId.Celo][selectedTokenFrom as TokenId],
    toTokenAddr: TokenAddresses[ChainId.Celo][selectedTokenTo as TokenId],
    "tokenUnit": 18

  })
  
  // const { balance, hasBalance, useMaxBalance } = useTokenBalance(
  //   store.account_balances,
  //   f.getValues('fromTokenId') as TokenId
  // )

  // const { quote,rate } = useSwapQuote(
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
         desc={`${
          isLoading ? '...' : formatEtherBalance(balance!.value, balance!.decimals, 3)
        } ${selectedTokenFrom}`}
          onChange={(v) => {
            setTokenFrom(v)
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
            value={f.getValues("amount")}
            // step="any"
            placeholder="0.00"
            type="number"
             control={f.register("amount", { valueAsNumber: true })}
          />
          {/* <AmountField quote={quote} isQuoteLoading={isLoading} direction="in" /> */}
        </div>

        <div className="flex items-center justify-center">
          <div className="flex items-center justify-end px-1.5 text-xs">
            {`${m.getQuoteQuery.data && m.getQuoteQuery.data} ${selectedTokenFrom} ~ 1 ${selectedTokenTo}`}
          </div>
        </div>

        <AppSelect
          label="To Token"
          onChange={(v) => {
            setTokenTo(v)
          }}
          data={swappableTokens.map((val) => {
            return { value: val, label: val }
          })}
        />
       
        <div className="w-full">
           <Label>Quote</Label>
        <Card className='bg-background'>
{f.getValues("toTokenId")} 0.00
        </Card>
       </div>
      </div>
      <div className="flex justify-center w-full my-6 mb-0">
        <Button
          type="submit"
        >
          Submit
        </Button>
      </div>
    </form>
  )
}
