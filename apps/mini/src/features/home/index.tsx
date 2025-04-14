import { JsonRpcProvider } from 'ethers'
import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { GoHistory } from 'react-icons/go'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { SlWallet } from 'react-icons/sl'
import { useAppContext } from 'src/Root/context'
import { ChainId, chainIdToChain } from 'src/lib/config/chains'
import { tokensList } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { AppStores } from 'src/lib/zustand'
import { formatEtherBalance } from 'src/utils'
import { useBalance } from 'wagmi'

import Airtime from '../airtime'

import BottomPopup from './BottomPopup'
import { TokenRow } from './TokenRow'
import HomeTabs from './tabs'

export function getProvider(chainId: ChainId): JsonRpcProvider {
  // if (cache[chainId]) return cache[chainId]
  const chain = chainIdToChain[chainId]
  const provider = new JsonRpcProvider(chain.rpcUrl, chainId)

  return provider
}

// const CUSD_CONTRACT_ADDRESS = '0xA0b86991c6218b36c1d19D4A2e9eb0CE3606E9d0' // cUSD contract address on Celo
// const CUSD_ABI = [
//   // ABI for the `transfer` function (simplified)
//   'function transfer(address recipient, uint256 amount) public returns (bool)',
// ]

// function useSendErc20() {
//   // Create an ethers provider from MetaMask
//   const provider = getProvider(ChainId.Celo)

//   // Get the signer (the connected wallet)

//   const { isConnected } = useAccount() // Get user's connected account info
//   // const { provider: pv } = useEthereum()

//   if (!isConnected) {
//     toast.error('Not connected')
//   }

//   const sendCusd = async (recipient: string, amount: string) => {
//     const signer = await provider.getSigner()
//     if (!signer) {
//       toast.error('Please connect your wallet')
//       return
//     }

//     const contract = new ethers.Contract(CUSD_CONTRACT_ADDRESS, CUSD_ABI, signer)

//     try {
//       const tx = await contract.transfer(recipient, ethers.parseUnits(amount, 18)) // cUSD has 18 decimals
//       await tx.wait() // Wait for transaction to be mined
//       toast.success(`Transaction successful: ${tx.hash}`)
//     } catch (error: any) {
//       toast.error('Error sending cUSD:', error.message)
//     }
//   }

//   return { sendCusd }
// }

export default function Home() {
  const store = AppStores.useSettings()
  const router = useRouter()

  const icons: { title: string; onClick: VoidFunction; icon: IconType }[] = [
    {
      title: 'Send',
      icon: BsSend,
      onClick: () => {
        store.update({ homeBtmSheet: 'SEND_CRYPTO' })
      },
    },
    {
      title: 'Receive',
      icon: SlWallet,
      onClick: () => {
        store.update({ homeBtmSheet: 'WALLET' })
      },
    },
    {
      title: 'Swap',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        store.update({ homeBtmSheet: 'SWAP' })
      },
    },
    {
      title: 'History',
      icon: GoHistory,
      onClick: () => {
        void router.push('/history')
      },
    },
  ]

  return (
    <div className="w-full items-center justify-center flex flex-col">
      <HomeTabs />

      <Balance />

      <div className="flex w-full items-center justify-around mt-[30px] mb-[20px]">
        {icons.map((val, i) => {
          const Icon = val.icon as any
          return (
            <div
              key={i}
              className="flex flex-col items-center justify-center"
              onClick={val.onClick}
            >
              <div className="p-2 bg-card rounded-full h-[45px] w-[45px] flex items-center justify-center hover:bg-primary">
                <Icon size={18} />
              </div>
              <p className="text-[10px] font-normal text-muted"> {val.title}</p>
            </div>
          )
        })}
      </div>

      {store.homeTab === 'Services' ? (
        <Airtime />
      ) : (
        <div className="flex flex-col bg-card rounded-md w-full gap-y-[0.1px] px-1 py-1">
          {tokensList.map((val, i) => (
            <TokenRow key={i} {...val} />
          ))}
        </div>
      )}
      <BottomPopup />
    </div>
  )
}

function Balance() {
  const { evmAddress } = useAppContext()

  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(TokenId.cUSD, ChainId.Celo) as `0x${string}`,
  })

  if (isLoading)
    return (
      <div className="h-full flex items-center justify-center mt-5">
        <p className="text-[25px]">.. .. cUSD</p>
      </div>
    )

  return (
    <div className="h-full flex items-center justify-center mt-5">
      <p className="text-[25px]">{formatEtherBalance(data!.value, 2)} cUSD</p>
    </div>
  )
}
