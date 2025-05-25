import { getDataSuffix, submitReferral } from '@divvi/referral-sdk'
import { ethers } from 'ethers'
import { toast } from 'sonner'
import { TokenAddresses, TokenId } from 'src/lib/config/tokens'

import { useProvider } from '../hooks/useProvider'
import { ChainId } from '../lib/config'

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
    const tokenAddress = TokenAddresses[ChainId.Celo][props.token]

    // 2. Create token contract instance
    const tokenContract = new ethers.Contract(tokenAddress, erc20Abi, signer)

    const tokenTx = await tokenContract.approve(TXN_MANAGER_CONTRACT_ADDRESS, amount)
    await tokenTx.wait()

    // const txnContract = new ethers.Contract(TXN_MANAGER_CONTRACT_ADDRESS, TXN_MANAGER_ABI, signer)

    // const tx = await txnContract.pay(
    //   tokenAddress,
    //   amount,
    //   props.txName,
    //   JSON.stringify(props.payload)
    // ) // cUSD has 18 decimals
    // await tx.wait() // Wait for transaction to be mined

    //! Divi Integrations
    const dataSuffix = getDataSuffix({
      consumer: '0x20F50b8832f87104853df3FdDA47Dd464f885a49',
      providers: [
        "0xE2bEdafB063e0B7f12607ebcf4636e2690A427a3",
        // 
        '0x0423189886d7966f0dd7e7d256898daeee625dca',
        '0x5f0a55fad9424ac99429f635dfb9bf20c3360ab8',
      ],
    })
    const iface = new ethers.Interface(TXN_MANAGER_ABI)
    const encodedCall = iface.encodeFunctionData('pay', [
      tokenAddress,
      amount,
      props.txName,
      JSON.stringify(props.payload),
    ])

    const callData = encodedCall + dataSuffix
    const txDivi = await signer.sendTransaction({
      to: TXN_MANAGER_CONTRACT_ADDRESS,
      data: callData,
      value: 0, // if no ETH is being sent
    })

    await txDivi.wait()

    // Step 5: Report the transaction to Divvi by calling `submitReferral`. Divvi will later decode the referral metadata from the transaction data and record the referral on-chain via the DivviRegistry contract.
    await submitReferral({
      txHash: txDivi.hash as `0x${string}`,
      chainId: ChainId.Celo,
    })

    toast.success(`Transaction successful: ${txDivi.hash}`)
    return JSON.stringify(txDivi.hash)
  }

  return { pay }
}
