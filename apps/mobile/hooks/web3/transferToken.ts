import { toast } from '@/components'
import { ethers } from 'ethers'
import { useWalletClient, shortString } from './hooks'
import { transfer } from 'thirdweb/extensions/erc20'
import { celo } from 'thirdweb/chains'
import { client } from '@/lib'
import { sendTransaction, toWei } from 'thirdweb'
import { useActiveAccount } from 'thirdweb/react'

export function useTransferToken() {
  const wc = useWalletClient()
  const account = useActiveAccount()

  const transferERC20 = async (props: { recipient: string; amount: string; token: string }) => {
    const transaction = transfer({
      contract: { address: props.token as `0x${string}`, chain: celo, client: client },
      to: props.recipient,
      amountWei: toWei(props.amount),
    })

    const { transactionHash } = await sendTransaction({ transaction, account: account! })

    toast.success(`Transaction successful: ${transactionHash}`)
    return transactionHash
  }

  const transferNative = async (props: { recipient: string; amount: string }) => {
    try {
      const txHash = await wc.sendTransaction({
        to: props.recipient,
        value: ethers.parseUnits(props.amount, 18),
      })

      toast.success(`Send Native Success! Hash: ${shortString(txHash)}`)
    } catch (error: any) {
      console.error('sendNative error', error)
    }
  }

  return { transferERC20, transferNative }
}
