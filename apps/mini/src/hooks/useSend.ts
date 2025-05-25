import { useEthereum } from '@particle-network/auth-core-modal'
import { ethers } from 'ethers'
import { toast } from 'sonner'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'

import { useAppContext } from '../Root/TgContext'
import { ChainId } from '../lib/config'
import { logger, shortString } from '../lib/utils'

import { useProvider } from './useProvider'

// const w = window as any

// const CUSD_CONTRACT_ADDRESS = '0x765DE816845861e75A25fCA122bb6898B8B1282a' // cUSD contract address on Celo
// ABI for the `transfer` function (simplified)
const ERC20_ABI = ['function transfer(address recipient, uint256 amount) public returns (bool)']

export function useSendToken() {
  const provider = useProvider()
  const { sendTransaction } = useEthereum()
  const { handleError } = useAppContext()

  const sendErc20 = async (props: { recipient: string; amount: string; token: TokenId }) => {
    const signer = await provider.getSigner()
    if (!signer) {
      toast.error('Please connect your wallet')
      throw new Error('Signer needed')
    }

    // console.log('Token Address: ' + TokenAddresses[ChainId.Celo][props.token])
    const contract = new ethers.Contract(
      getTokenAddress(props.token, ChainId.Celo),
      ERC20_ABI,
      signer
    )

    const tx = await contract.transfer(props.recipient, ethers.parseUnits(props.amount, 18)) // cUSD has 18 decimals
    await tx.wait() // Wait for transaction to be mined
    toast.success(`Transaction successful: ${tx.hash}`)
    return JSON.stringify(tx.hash)
  }

  const sendNative = async (props: { recipient: string; amount: string }) => {
    try {
      const result = await sendTransaction({
        to: props.recipient,
        value: ethers.parseUnits(props.amount, 18).toString(),
      })

      toast.success(`Send Native Success! Hash: ${shortString(result)}`)
    } catch (error: any) {
      logger.error('sendNative error', error)
      handleError(error)
    }
  }

  return { sendErc20, sendNative }
}
