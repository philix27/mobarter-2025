import { ethers } from 'ethers'
import { toast } from 'sonner'

import { useProvider } from './useProvider'

const CUSD_CONTRACT_ADDRESS = '0x765DE816845861e75A25fCA122bb6898B8B1282a' // cUSD contract address on Celo
// ABI for the `transfer` function (simplified)
const CUSD_ABI = ['function transfer(address recipient, uint256 amount) public returns (bool)']

export function useSendErc20() {
  const provider = useProvider()

  const sendCusd = async (recipient: string, amount: string) => {
    const signer = await provider.getSigner()
    if (!signer) {
      toast.error('Please connect your wallet')
      return
    }

    const contract = new ethers.Contract(CUSD_CONTRACT_ADDRESS, CUSD_ABI, signer)

    try {
      const tx = await contract.transfer(recipient, ethers.parseUnits(amount, 18)) // cUSD has 18 decimals
      await tx.wait() // Wait for transaction to be mined
      toast.success(`Transaction successful: ${tx.hash}`)
    } catch (error: any) {
      toast.error('Error sending cUSD:', error.message)
    }
  }

  return { sendCusd }
}
