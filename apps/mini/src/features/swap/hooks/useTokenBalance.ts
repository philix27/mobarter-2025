import { useFormikContext } from 'formik'
import { toast } from 'sonner'
import { TokenId, Tokens } from 'src/lib/config/tokens'
import { fromWei, fromWeiRounded } from 'src/lib/utils/amount'
import { AccountBalances } from 'src/lib/zustand/swap'
import { useAccount } from 'wagmi'

import { SwapFormValues } from '../types'

// Gets the user's token balances and checks if the user has enough balance to perform a swap
export function useTokenBalance(balances: AccountBalances, tokenId: TokenId) {
  const { isConnected } = useAccount()
  const { setFieldValue } = useFormikContext<SwapFormValues>()

  const balance = balances[tokenId]
  const roundedBalance = fromWeiRounded(balance, Tokens[tokenId].decimals)
  const hasBalance = Boolean(Number.parseFloat(roundedBalance) > 0)

  const useMaxBalance = () => {
    const maxAmount = fromWei(balance, Tokens[tokenId].decimals)
    setFieldValue('amount', maxAmount)
    setFieldValue('direction', 'in')

    if (tokenId === TokenId.CELO) {
      toast.info('Consider keeping some CELO for transaction fees')
    }
  }

  return {
    balance: roundedBalance,
    hasBalance: isConnected && hasBalance,
    useMaxBalance,
  }
}
