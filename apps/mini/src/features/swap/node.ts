import { Mento } from '@mento-protocol/mento-sdk'
import {  useQuery } from '@tanstack/react-query'
import { JsonRpcSigner } from 'ethers'
import { useProvider } from 'src/hooks/useProvider'
import { formatUnits, parseUnits } from 'viem'

export function useMento({fromTokenAddr, toTokenAddr, amount}: {
    fromTokenAddr: string; amount: string; tokenUnit: number;
    toTokenAddr:string;}) {
  const { provider } = useProvider()
  const mento = async () => {
    const signer = await provider.getSigner()
    const mentoObj = await Mento.create(signer)

    return { client: mentoObj, signer }
  }


 const getQuoteQuery = useQuery({
    queryKey: ['getQuote'],
   queryFn: async () => {
       const { client } = await mento()
      const res = await _getQuote({
        fromTokenAddr,
        amount,
        client,
        tokenUnit: 18,
        toTokenAddr
      })
      return res
    },
  })

  return { getQuoteQuery, increaseAllowance, swap:_swap }
}


  const increaseAllowance = async (i: {
    fromTokenAddr: string; amount: string; client: Mento; 
    signer: JsonRpcSigner;} ) => {
    // const { client, signer } = await mento()
    const allowanceTxObj = await i.client.increaseTradingAllowance(i.fromTokenAddr, i.amount)
    const allowanceTx = await i.signer.sendTransaction(allowanceTxObj)
    const allowanceReceipt = await allowanceTx.wait()
    return allowanceReceipt
  }


    const _getQuote = async (i: {
    fromTokenAddr: string; amount: string; client: Mento ;tokenUnit: number;
    toTokenAddr:string;}
  ) => {

    const amountIn = parseUnits(i.amount, i.tokenUnit)
    const quoteAmountOut = await i.client.getAmountOut(i.fromTokenAddr, i.toTokenAddr, amountIn)
    const amountOut = formatUnits(quoteAmountOut, i.tokenUnit)
    return amountOut
  }

    const _swap = async (
      i: {
      fromTokenAddr: string,
    toTokenAddr: string,
    amount: string,
        tokenUnit: number;
    client: Mento ;signer: JsonRpcSigner
    }
  ) => {
    // const { client, signer } = await mento()
    const amountIn = parseUnits(i.amount, i.tokenUnit)

    const quoteAmountOut = await i.client.getAmountOut(i.fromTokenAddr, i.toTokenAddr, amountIn)
    const expectedAmountOut = quoteAmountOut.mul(99).div(100)
    const swapTxObj = await i.client.swapIn(i.fromTokenAddr, i.toTokenAddr, amountIn, expectedAmountOut)

    const swapTx = await i.signer.sendTransaction(swapTxObj)
    const swapReceipt = await swapTx.wait()
    return swapReceipt
  }