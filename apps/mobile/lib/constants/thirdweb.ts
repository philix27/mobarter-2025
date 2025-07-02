import { createThirdwebClient, getContract } from 'thirdweb'
import { base, celo } from 'thirdweb/chains'
import { env } from '../env'

const clientId = env.THIRDWEB_CLIENT_ID

export const client = createThirdwebClient({
  clientId,
})

export const chain = celo

export const contract = getContract({
  client,
  address: '0x82e50a6BF13A70366eDFC871f8FB8a428C43Dc03',
  chain: celo,
})

export const usdcContract = getContract({
  address: '0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913',
  chain: celo,
  client,
})
