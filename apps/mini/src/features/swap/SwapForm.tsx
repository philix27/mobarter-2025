import { useQuery } from '@tanstack/react-query'
import Image from 'next/image'
import { useState } from 'react'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import {
  ChainId,
  IToken,
  TokenAddresses,
  TokenId,
  getTokenAddress,
  tokensList,
} from 'src/lib/config'
import { useBalance } from 'wagmi'

import { TokenRow } from '../home/TokenRow'

import { getQuote, initMento } from './node'
import { useAppContext } from '@/src/Root/context'
import BottomModal from '@/src/components/BottomModal'
import { Card, Label } from '@/src/components/comps'
import { useProvider } from '@/src/hooks/useProvider'
// import { useProvider } from '@/src/hooks/useProvider'
import { formatEtherBalance } from '@/src/lib/utils'

export const useTokenBalance = (selectedToken: TokenId) => {
  const { evmAddress } = useAppContext()

  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(selectedToken, ChainId.Celo) as `0x${string}`,
  })

  return { balance: data, isLoading }
}
export function SwapForm() {
  const provider = useProvider()
  // const provider = getProvider(42220)
  const [showSheets, setSheets] = useState<'from' | 'to' | undefined>(undefined)
  const [selectedTokenFrom, setTokenFrom] = useState<IToken>(tokensList[0])
  const [selectedTokenTo, setTokenTo] = useState<IToken>(tokensList[1])
  const [amount, setAmount] = useState<number>(0)
  const fromTokenAddr = TokenAddresses[ChainId.Celo][selectedTokenFrom!.id as TokenId]
  const toTokenAddr = TokenAddresses[ChainId.Celo][selectedTokenTo!.id as TokenId]
  const { balance, isLoading } = useTokenBalance((selectedTokenFrom!.id as TokenId) || 'CELO')

  // const { allTokenOptions, swappableTokens } = useTokenOptions(
  //   f.getValues('fromTokenId') as TokenId
  // )

  // const m = useMento({
  //   amount: `${amount}`,
  //   fromTokenAddr,
  //   toTokenAddr,
  //   tokenUnit: 18,
  // })

  console.log('Initialize provider: ' + JSON.stringify(provider))

  const g = useQuery({
    queryKey: ['getQuote'],
    queryFn: async () => {
      console.log('Before GetQuote')
      const { client } = await initMento(provider)
      console.log('client ' + client)
      const res = await getQuote({
        fromTokenAddr,
        amount: `${amount}`,
        client,
        tokenUnit: 18,
        toTokenAddr,
      })
      console.log('After GetQuote')
      toast.success('GetQuote' + JSON.stringify(res))
      return res
    },
    onError(err) {
      toast.error('GetQuote Catchy: ' + err)
      return err
    },
  })

  // ! Functions

  const onSubmit = () => {
    return
  }

  return (
    <>
      <div className="w-full">
        <div className="flex flex-col gap-3 w-full">
          <div className="flex flex-col ">
            <Label>From</Label>
            <div className="flex w-full bg-background rounded-md items-center justify-center px-2 py-[2px]">
              {selectedTokenFrom && selectedTokenFrom!.imgUrl && (
                <Image
                  src={selectedTokenFrom!.imgUrl}
                  alt={selectedTokenFrom!.name}
                  className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
                  onClick={() => {
                    setSheets('from')
                  }}
                />
              )}

              <input
                className="bg-background border-none outline-none p-2 w-full"
                placeholder="0.00"
                type={'number'}
                pattern={'[0-9]*'}
                inputMode={'decimal'}
                min={0}
                onChange={(e) => {
                  const num = e.target.value
                  setAmount(parseFloat(num))
                }}
              />
            </div>
            <div className="flex w-full mt-1 justify-between">
              <p className="text-[12px] text-muted">{`${
                isLoading ? '...' : formatEtherBalance(balance!.value, balance!.decimals, 3)
              } ${selectedTokenFrom.symbol}`}</p>
              <p className="text-primary text-[12px] bg-background rounded-sm px-3 py-[2px] hover:bg-card">
                max
              </p>
            </div>
          </div>

          <div className="flex items-center justify-center">
            <div className="flex items-center justify-end px-1.5 text-xs">
              {`${g.data && JSON.stringify(g.data)} ${selectedTokenFrom.symbol} ~ 1 ${
                selectedTokenTo.symbol
              }`}
            </div>
          </div>

          <Label>To</Label>
          <div className="w-full flex items-center justify-center bg-background px-2 py-[2px] rounded-md">
            {selectedTokenTo && selectedTokenTo!.imgUrl && (
              <Image
                src={selectedTokenTo!.imgUrl}
                alt={selectedTokenTo!.name.slice(0, 2)}
                className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
                onClick={() => {
                  setSheets('to')
                }}
              />
            )}
            <Card className="bg-background"> 0.00</Card>
          </div>
        </div>
        <div className="flex justify-center w-full my-6 mb-0">
          <Button type="button" onClick={onSubmit}>
            Submit
          </Button>
        </div>
        {g.data && (
          <p className="max-w-[400px] text-destructive text-[10px] text-wrap">
            {JSON.stringify(g.data)}
          </p>
        )}
        {/* {g.error && (
          <p className="max-w-[400px] text-destructive text-[10px] text-wrap">
            {`Err: ${g.error}`}
          </p>
        )} */}
      </div>
      <BottomModal
        showSheet={showSheets === 'from' || showSheets === 'to'}
        onClose={() => {
          setSheets(undefined)
        }}
      >
        <div className="w-full max-h-[75vh] overflow-y-scroll no-scrollbar">
          {tokensList
            // .filter((val) => val.id === selectedTokenFrom!.id)
            .map((val, i) => (
              <TokenRow
                key={i}
                {...val}
                className="bg-card rounded-md"
                onClick={() => {
                  if (showSheets === 'from') {
                    setTokenFrom(val)
                    setSheets(undefined)
                  } else {
                    setTokenTo(val)
                    setSheets(undefined)
                  }
                }}
              />
            ))}
        </div>
      </BottomModal>
    </>
  )
}
