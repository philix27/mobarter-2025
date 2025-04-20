import { Mento } from '@mento-protocol/mento-sdk'
import { useProvider } from 'src/hooks/useProvider'
import { formatUnits, parseUnits } from 'viem'

export function useMento() {
  const { provider } = useProvider()
  //   const [fromTokenAddr, setFromTokenAddr] = useState<string>()
  //   const [toTokenAddr, setToTokenAddr] = useState<string>()

  const mento = async () => {
    const signer = await provider.getSigner()
    const mentoObj = await Mento.create(signer)

    return { client: mentoObj, signer }
  }
  const getQuote = async (
    fromTokenAddr: string,
    toTokenAddr: string,
    amount: string,
    tokenUnit = 18
  ) => {
    const { client } = await mento()
    const amountIn = parseUnits(amount, tokenUnit)
    const quoteAmountOut = await client.getAmountOut(fromTokenAddr, toTokenAddr, amountIn)
    const amountOut = formatUnits(quoteAmountOut, tokenUnit)
    return amountOut
  }

  const increaseAllowance = async (fromTokenAddr: string, amount: string) => {
    const { client, signer } = await mento()
    const allowanceTxObj = await client.increaseTradingAllowance(fromTokenAddr, amount)
    const allowanceTx = await signer.sendTransaction(allowanceTxObj)
    const allowanceReceipt = await allowanceTx.wait()
    return allowanceReceipt
  }

  const swap = async (
    fromTokenAddr: string,
    toTokenAddr: string,
    amount: string,
    tokenUnit = 18
  ) => {
    const { client, signer } = await mento()
    const amountIn = parseUnits(amount, tokenUnit)

    const quoteAmountOut = await client.getAmountOut(fromTokenAddr, toTokenAddr, amountIn)
    const expectedAmountOut = quoteAmountOut.mul(99).div(100)
    const swapTxObj = await client.swapIn(fromTokenAddr, toTokenAddr, amountIn, expectedAmountOut)

    const swapTx = await signer.sendTransaction(swapTxObj)
    const swapReceipt = await swapTx.wait()
    return swapReceipt
  }

  return { getQuote, increaseAllowance, swap }
}
