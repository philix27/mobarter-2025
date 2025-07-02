import React, { createContext, PropsWithChildren } from 'react'
import { toast } from '@/components'
import { transfer } from 'thirdweb/extensions/erc20'
import { celo } from 'thirdweb/chains'
import { client } from '@/lib'
import { sendTransaction, toEther, toWei } from 'thirdweb'
import { useActiveAccount } from 'thirdweb/react'
import { ethers, toBigInt } from 'ethers'

interface ITransferERC20 {
  recipient: string
  amount: string
  token: string
}

interface ITransferNative {
  recipient: string
  amount: string
}

// Define the shape of the context
type TransactionsContextProps = {
  transferERC20: (props: ITransferERC20) => Promise<string>
  transferNative: (value: ITransferNative) => Promise<string>
}

export const TransactionsContext = createContext<TransactionsContextProps | null>(null)

// ResponseProvider component
export default function TransactionsProvider({ children }: PropsWithChildren) {
  const account = useActiveAccount()

  // Send ERC20 token
  const transferERC20 = async (props: ITransferERC20) => {
    console.log(props.amount, 'Normalized amount')
    console.log(toWei(props.amount), 'toWei')

    const transaction = transfer({
      contract: { address: props.token as `0x${string}`, chain: celo, client: client },
      to: props.recipient,
      // amountWei: toBigInt(ethers.parseUnits(props.amount, 18)), // Convert amount to wei
      amount: props.amount,
    })

    const { transactionHash } = await sendTransaction({ transaction, account: account! })

    toast.success(`Transaction successful: ${transactionHash}`)
    return transactionHash
  }

  // 2. Send native tokens
  const transferNative = async (props: ITransferNative) => {
    return 'None'
  }

  return (
    <TransactionsContext.Provider value={{ transferERC20, transferNative }}>
      {children}
    </TransactionsContext.Provider>
  )
}
