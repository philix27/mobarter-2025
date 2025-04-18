import { useQuery } from '@tanstack/react-query'
import BigNumber from 'bignumber.js'
import { useEffect } from 'react'
import { toast } from 'react-toastify'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { getMentoSdk, getTradablePairForTokens } from 'src/features/sdk'
import { logger } from 'src/utils/logger'
import { useSendTransaction } from 'wagmi'

export function useApproveTransaction(
  chainId: number,
  tokenInId: TokenId,
  tokenOutId: TokenId,
  amountInWei: string,
  accountAddress?: Address
) {
  const { error: txPrepError, data: txRequest } = useQuery(
    ['useApproveTransaction', chainId, tokenInId, tokenOutId, amountInWei, accountAddress],
    async () => {
      if (!accountAddress || new BigNumber(amountInWei).lte(0)) return null
      const sdk = await getMentoSdk(chainId)
      const tokenInAddr = getTokenAddress(tokenInId, chainId)
      const tradablePair = await getTradablePairForTokens(chainId, tokenInId, tokenOutId)
      const txRequest = await sdk.increaseTradingAllowance(tokenInAddr, amountInWei, tradablePair)
      return { ...txRequest, to: tokenInAddr }
    },
    {
      retry: false,
    }
  )

  const {
    data: txResult,
    isLoading,
    isSuccess,
    error: txSendError,
    sendTransactionAsync,
  } = useSendTransaction()

  useEffect(() => {
    if (txPrepError) {
      toast.error('Unable to prepare approval transaction')
      logger.error(txPrepError)
    } else if (txSendError) {
      toast.error('Unable to execute approval transaction')
      logger.error(txSendError)
    }
  }, [txPrepError, txSendError])

  return {
    sendApproveTx: sendTransactionAsync,
    approveTxResult: txResult,
    isApproveTxLoading: isLoading,
    isApproveTxSuccess: isSuccess,
    txRequest,
  }
}
