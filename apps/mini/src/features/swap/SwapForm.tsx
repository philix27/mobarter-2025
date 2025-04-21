import { zodResolver } from '@hookform/resolvers/zod'
import Image from 'next/image'
import { useState } from 'react'
import { useForm } from 'react-hook-form'
import { Button } from 'src/components/Button'
import {
  ChainId,
  IToken,
  TokenAddresses,
  TokenId,
  getTokenAddress,
  tokensList,
} from 'src/lib/config'
import { AppStores } from 'src/lib/zustand'
import { useBalance } from 'wagmi'

import { TokenRow } from '../home/TokenRow'

import { IFormData, initialValues, schema } from './formData'
import { useMento } from './node'
import { SwapFormValues } from './types'
import { useAppContext } from '@/src/Root/context'
import BottomModal from '@/src/components/BottomModal'
import { Card, Label } from '@/src/components/comps'

export const useTokenBalanceX = (selectedToken: TokenId) => {
  const { evmAddress } = useAppContext()

  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(selectedToken, ChainId.Celo) as `0x${string}`,
  })

  return { balance: data, isLoading }
}
export function SwapForm() {
  const [showSheets, setSheets] = useState<'from' | 'to' | undefined>(undefined)
  const [selectedTokenFrom, setTokenFrom] = useState<IToken>()
  const [selectedTokenTo, setTokenTo] = useState<IToken>()
  const store = AppStores.useSwap()
  const f = useForm<IFormData>({
    resolver: zodResolver(schema),
    defaultValues: {
      ...initialValues,
    },
  })
  // const { balance, isLoading } = useTokenBalanceX((selectedTokenFrom!.id as TokenId) || 'CELO')

  // const { allTokenOptions, swappableTokens } = useTokenOptions(
  //   f.getValues('fromTokenId') as TokenId
  // )

  const { amount } = f.getValues()
  const m = useMento({
    amount: `${amount}`,
    fromTokenAddr:
      TokenAddresses[ChainId.Celo][selectedTokenFrom ? (selectedTokenFrom!.id as TokenId) : 'cUSD'],
    toTokenAddr:
      TokenAddresses[ChainId.Celo][selectedTokenTo ? (selectedTokenTo!.id as TokenId) : 'CELO'],
    tokenUnit: 18,
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

  const onSubmit = (values: IFormData) => {
    store.update({ swap_formValues: values as SwapFormValues, swap_confirmView: true })
  }

  return (
    <>
      <form onSubmit={f.handleSubmit(onSubmit)} className="w-full">
        <div className="flex flex-col gap-3 w-full">
          <div className="flex flex-col items-end">
            {/* {hasBalance && (
            <button
              type="button"
              title="Use full balance"
              className="text-xs text-muted hover:underline"
              onClick={useMaxBalance}
            >{`Use Max (${balance})`}</button>
          )} */}
            <Label>From</Label>
            <div className="flex w-full bg-background rounded-md items-center justify-center">
              <div
                className="rounded-full mr-2 bg-primary"
                onClick={() => {
                  setSheets('from')
                }}
              >
                {selectedTokenFrom && selectedTokenFrom?.imgUrl && (
                  <Image
                    src={selectedTokenFrom!.imgUrl}
                    alt={selectedTokenFrom!.name}
                    className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
                  />
                )}
              </div>
              <input
                className="bg-background border-none outline-none p-2 w-full"
                placeholder="0.00"
                type={'number'}
                pattern={'[0-9]*'}
                inputMode={'decimal'}
                min={0}
              />
            </div>
          </div>

          <div className="flex items-center justify-center">
            <div className="flex items-center justify-end px-1.5 text-xs">
              {`${
                m.getQuoteQuery.data && m.getQuoteQuery.data
              } ${selectedTokenFrom} ~ 1 ${selectedTokenTo}`}
            </div>
          </div>

          <Label>To</Label>
          <div className="w-full flex items-center justify-center">
            <div
              className="rounded-full mr-2 bg-primary"
              onClick={() => {
                setSheets('to')
              }}
            >
              {selectedTokenTo && selectedTokenTo?.imgUrl && (
                <Image
                  src={selectedTokenTo!.imgUrl}
                  alt={selectedTokenTo!.name.slice(0, 2)}
                  className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
                />
              )}
            </div>
            <Card className="bg-background">{f.getValues('toTokenId')} 0.00</Card>
          </div>
        </div>
        <div className="flex justify-center w-full my-6 mb-0">
          <Button type="submit">Submit</Button>
        </div>
      </form>
      <BottomModal
        showSheet={!showSheets}
        onClose={() => {
          setSheets(undefined)
        }}
      >
        <div className="w-full max-h-[75vh] overflow-y-scroll no-scrollbar">
          {tokensList
            .filter((val) => val.id === selectedTokenFrom!.id)
            .map((val, i) => (
              <TokenRow
                key={i}
                {...val}
                className="bg-card rounded-md"
                onClick={() => {
                  if (showSheets === 'from') {
                    setTokenFrom(val)
                  } else {
                    setTokenTo(val)
                  }
                }}
              />
            ))}
        </div>
      </BottomModal>
    </>
  )
}
