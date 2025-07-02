import { useQuery } from '@tanstack/react-query'
import { ethers, formatEther } from 'ethers'
import { createPublicClient, createWalletClient, http } from 'viem'
import { privateKeyToAccount } from 'viem/accounts'
import { supportedChains } from './type'
import { toast } from '@/components'
import { abi as ERC20_ABI } from './erc20Abi.json'
import * as t from 'thirdweb'
import { AppStores } from '@/lib'
import { useActiveAccount } from 'thirdweb/react'

export function shortString(str: any, len = 5): string {
  if (Array.isArray(str)) {
    str = '[' + str.toString() + ']'
  }

  if (str) {
    if (typeof str.toString === 'function') {
      str = str.toString()
    }
    if (str.length <= 10) {
      return str
    }
    return `${str.slice(0, len)}...${str.slice(str.length - len, str.length)}`
  }
  return ''
}

export const useChain = () => {
  const store = AppStores.useWallet()
  return supportedChains[store.chain]
}

export const usePublicClient = () => {
  const chain = useChain()
  const client = createPublicClient({
    chain: chain,
    transport: http(),
  })

  return client
}

export const useWalletClient = () => {
  const store = AppStores.useWallet()
  const chain = useChain()
  const account = privateKeyToAccount(store.walletKey as `0x${string}`)
  const client = createWalletClient({
    account,
    chain: chain,
    transport: http(),
  })
  return client
}

export const useAddress = () => {
  const account = useActiveAccount()
  // const c = useWalletClient()
  // return c.account.address
  return account?.address
}

function useTransferToken() {
  const wc = useWalletClient()

  const transferERC20 = async (props: { recipient: string; amount: string; token: string }) => {
    const amt = ethers.parseUnits(props.amount, 18)
    const txHash = await wc.writeContract({
      address: props.token,
      abi: ERC20_ABI,
      functionName: 'transfer',
      args: [props.recipient, amt],
    })

    toast.success(`Transaction successful: ${txHash}`)
    return JSON.stringify(txHash)
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

export const useBalance = () => {
  const pc = usePublicClient()
  const address = useAddress()

  return useQuery({
    queryKey: ['balance-' + pc.chain.name],
    queryFn: async () => {
      const balance = await pc.getBalance({
        address: address!,
        blockTag: 'safe',
      })

      return formatEther(balance)
    },
  })
}
