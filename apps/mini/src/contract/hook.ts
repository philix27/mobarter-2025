import { ethers } from 'ethers'
import { toast } from 'sonner'
import { TokenAddresses, TokenId } from 'src/lib/config/tokens'

import { useProvider } from '../hooks/useProvider'

import { TXN_MANAGER_ABI } from './abi.txnManager'
import { TXN_MANAGER_CONTRACT_ADDRESS } from './const'

const erc20Abi = ['function approve(address spender, uint256 amount) public returns (bool)']

export type PaymentPurpose = 'AIRTIME' | 'DATA' | 'OFFRAMP' | 'ELECTRICITY' | 'GIFTCARD'
export function usePay<T>() {
  const provider = useProvider()

  const pay = async (props: {
    token: TokenId
    amount: string
    txName: PaymentPurpose
    payload: T
  }) => {
    const signer = await provider.getSigner()
    if (!signer) {
      toast.error('Please connect your wallet')
      throw new Error('Signer needed')
    }
    const amount = ethers.parseUnits(props.amount, 18)
    const tokenAddress = TokenAddresses['42220'][props.token]

    // 2. Create token contract instance
    const tokenContract = new ethers.Contract(tokenAddress, erc20Abi, signer)

    const tokenTx = await tokenContract.approve(TXN_MANAGER_CONTRACT_ADDRESS, amount)
    await tokenTx.wait()

    const txnContract = new ethers.Contract(TXN_MANAGER_CONTRACT_ADDRESS, TXN_MANAGER_ABI, signer)

    const tx = await txnContract.pay(
      tokenAddress,
      amount,
      props.txName,
      JSON.stringify(props.payload)
    ) // cUSD has 18 decimals
    await tx.wait() // Wait for transaction to be mined
    toast.success(`Transaction successful: ${tx.hash}`)
    return JSON.stringify(tx.hash)
  }

  return { pay }
}
