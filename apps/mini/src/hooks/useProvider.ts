import { useEthereum } from '@particle-network/auth-core-modal'
import { ethers } from 'ethers'

export const useProvider = () => {
  const { provider: pvd } = useEthereum()
  const pp = pvd as ethers.Eip1193Provider
  // Get the signer (the connected wallet)
  const provider = new ethers.BrowserProvider(pp)
  return provider
}
