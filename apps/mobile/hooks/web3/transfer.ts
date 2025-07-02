import { transferFrom } from 'thirdweb/extensions/erc20'
import { getContract, sendTransaction } from 'thirdweb'
import { client } from '@/lib'
import { celo } from 'thirdweb/chains'
import { useActiveAccount } from 'thirdweb/react'

export const useTransferERC20 = async () => {
  const account = useActiveAccount()

  // Send and confirm the transaction
  const send = async (props: {
    from: string
    to: string
    amount: string
    contractAddress: string
  }) => {
    // Get the ERC20 contract instance
    const contract = getContract({
      client,
      chain: celo, // e.g., "1" for Ethereum mainnet
      address: props.contractAddress,
    })

    // Prepare the transaction
    const transaction = transferFrom({
      contract,
      from: props.from,
      to: props.to,
      amount: props.amount, // Number of tokens to send (as bigint, e.g., 10n)
      // Or use amountWei for raw wei value
      // amountWei: 10000000000000000000n,
    })

    const receipt = await sendTransaction({
      account: account!,
      transaction,
    })

    return receipt
  }

  return { send }
}
