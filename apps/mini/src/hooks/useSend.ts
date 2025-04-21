import { ethers } from 'ethers'
import { toast } from 'sonner'
import { TokenAddresses, TokenId } from 'src/lib/config/tokens'

import { ChainId } from '../lib/config'

import { useProvider } from './useProvider'

// const CUSD_CONTRACT_ADDRESS = '0x765DE816845861e75A25fCA122bb6898B8B1282a' // cUSD contract address on Celo
// ABI for the `transfer` function (simplified)
const ERC20_ABI = ['function transfer(address recipient, uint256 amount) public returns (bool)']

export function useSendToken() {
  const provider = useProvider()

  const sendErc20 = async (props: { recipient: string; amount: string; token: TokenId }) => {
    const signer = await provider.getSigner()
    if (!signer) {
      toast.error('Please connect your wallet')
      throw new Error('Signer needed')
    }

    const contract = new ethers.Contract(
      TokenAddresses[ChainId.Celo][props.token],
      ERC20_ABI,
      signer
    )

    const tx = await contract.transfer(props.recipient, ethers.parseUnits(props.amount, 18)) // cUSD has 18 decimals
    await tx.wait() // Wait for transaction to be mined
    toast.success(`Transaction successful: ${tx.hash}`)
    return JSON.stringify(tx.hash)
  }

  return { sendErc20 }
}
