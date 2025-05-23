import { useEthereum } from '@particle-network/auth-core-modal'
import { ethers } from 'ethers'
import { toast } from 'sonner'
import { TokenId } from 'src/lib/config/tokens'

import { logger, shortString } from '../lib/utils'
import { useAppContext } from '../root/TgContext'

import { useProvider } from './useProvider'

// const w = window as any

const tokenAddress: Record<TokenId, string> = {
  [TokenId.CELO]: '0x471EcE3750Da237f93B8E339c536989b8978a438',
  [TokenId.cUSD]: '0x765DE816845861e75A25fCA122bb6898B8B1282a',
  [TokenId.cEUR]: '0xD8763CBa276a3738E6DE85b4b3bF5FDed6D6cA73',
  [TokenId.cREAL]: '0xe8537a3d056DA446677B9E9d6c5dB704EaAb4787',
  [TokenId.USDC]: '0xcebA9300f2b948710d2653dD7B07f33A8B32118C',
  [TokenId.USDT]: '0x48065fbBE25f71C9282ddf5e1cD6D6A887483D5e',
  [TokenId.axlUSDC]: '0xEB466342C4d449BC9f53A865D5Cb90586f405215',
  [TokenId.axlEUROC]: '0x061cc5a2C863E0C1Cb404006D559dB18A34C762d',
  [TokenId.eXOF]: '0x73F93dcc49cB8A239e2032663e9475dd5ef29A08',
  [TokenId.cKES]: '0x456a3D042C0DbD3db53D5489e98dFb038553B0d0',
  [TokenId.PUSO]: '0x105d4A9306D2E55a71d2Eb95B81553AE1dC20d7B',
  [TokenId.cCOP]: '0x8A567e2aE79CA692Bd748aB832081C45de4041eA',
  [TokenId.cGHS]: '0xfAeA5F3404bbA20D3cc2f8C4B0A888F55a3c7313',
}

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
    const contract = new ethers.Contract(tokenAddress[props.token], ERC20_ABI, signer)

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
