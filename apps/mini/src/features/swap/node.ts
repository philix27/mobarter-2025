import { Mento } from '@mento-protocol/mento-sdk'
import { useQuery } from '@tanstack/react-query'
import { JsonRpcProvider, JsonRpcSigner, ethers } from 'ethers'
import { toast } from 'sonner'
import { useProvider } from 'src/hooks/useProvider'
import { formatUnits, parseUnits } from 'viem'

import { ChainId, chainIdToChain } from '@/src/lib/config'

const cache: Record<number, JsonRpcProvider> = {}

// TODO remove and replace with useProvider from wagmi
export function getProvider(chainId: ChainId): JsonRpcProvider {
  if (cache[chainId]) return cache[chainId]
  const chain = chainIdToChain[chainId]
  const provider = new JsonRpcProvider(chain.rpcUrl, chainId)
  cache[chainId] = provider
  return provider
}

export function useMento({
  fromTokenAddr,
  toTokenAddr,
  amount,
}: {
  fromTokenAddr: string
  amount: string
  tokenUnit: number
  toTokenAddr: string
}) {
  const { provider } = useProvider()
  // const provider = getProvider(42220)

  console.log('Initialize provider: ' + JSON.stringify(provider))

  const getQuoteQuery = useQuery({
    queryKey: ['getQuote'],
    queryFn: async () => {
      console.log('Before GetQuote')
      const { client } = await initMento(provider as unknown as ethers.BrowserProvider)
      const res = await getQuote({
        fromTokenAddr,
        amount,
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

  return {
    getQuoteQuery,
    increaseAllowance,
    swap: swap,
    quote: getQuoteQuery.isLoading
      ? '...'
      : getQuoteQuery.error
      ? JSON.stringify(getQuoteQuery.error)
      : getQuoteQuery.data,
  }
}

export const increaseAllowance = async (i: {
  fromTokenAddr: string
  amount: string
  client: Mento
  signer: JsonRpcSigner
}) => {
  // const { client, signer } = await mento()
  const allowanceTxObj = await i.client.increaseTradingAllowance(i.fromTokenAddr, i.amount)
  const allowanceTx = await i.signer.sendTransaction(allowanceTxObj)
  const allowanceReceipt = await allowanceTx.wait()
  return allowanceReceipt
}

export const getQuote = async (i: {
  fromTokenAddr: string
  amount: string
  client: Mento
  tokenUnit: number
  toTokenAddr: string
}) => {
  console.log('Before Async: ' + i)
  const amountIn = parseUnits(i.amount, i.tokenUnit)
  const quoteAmountOut = await i.client.getAmountOut(i.fromTokenAddr, i.toTokenAddr, amountIn)
  console.log('quoteAmountOut: ' + quoteAmountOut)
  const amountOut = formatUnits(quoteAmountOut, i.tokenUnit)
  return amountOut
}

export const swap = async (i: {
  fromTokenAddr: string
  toTokenAddr: string
  amount: string
  tokenUnit: number
  client: Mento
  signer: JsonRpcSigner
}) => {
  // const { client, signer } = await mento()
  const amountIn = parseUnits(i.amount, i.tokenUnit)

  const quoteAmountOut = await i.client.getAmountOut(i.fromTokenAddr, i.toTokenAddr, amountIn)
  const expectedAmountOut = quoteAmountOut.mul(99).div(100)
  const swapTxObj = await i.client.swapIn(
    i.fromTokenAddr,
    i.toTokenAddr,
    amountIn,
    expectedAmountOut
  )

  const swapTx = await i.signer.sendTransaction(swapTxObj)
  const swapReceipt = await swapTx.wait()
  return swapReceipt
}

export const initMento = async (provider: ethers.BrowserProvider | JsonRpcProvider) => {
  const signer = await provider!.getSigner()
  // console.warn('Init signer: ' + JSON.stringify(signer))
  const mentoObj = await Mento.create(provider)
  console.warn('Init obj: ' + JSON.stringify(mentoObj))
  const client = mentoObj
  // const client = mentoObj.connectSigner(signer)

  return { client, signer }
}
