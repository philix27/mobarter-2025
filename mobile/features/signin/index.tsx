import { Wrapper } from '@/components'
import { TText } from '@/components/ui'
import { Link, router } from 'expo-router'
import { useColorScheme } from 'react-native'
import { ConnectEmbed, useActiveAccount, useConnect } from 'thirdweb/react'
import { inAppWallet } from 'thirdweb/wallets/in-app'
import { chain, client } from '@/lib'
import { celo } from 'thirdweb/chains'
import { InputButton } from '@/components/forms'
import { createThirdwebClient } from 'thirdweb'

export default function SignIn() {
  const account = useActiveAccount()
  const theme = useColorScheme()
  const conn = useConnect()
  account?.sendTransaction({
    chainId: 0,
  })
  // const account = useActiveAccount()

  // if (!account) {
  //   router.push('/(auth)/sign-in')
  // }
  return (
    <Wrapper>
      <Link href={'/home'}>
        {account ? <TText>Connected </TText> : <TText>Not connected X</TText>}
      </Link>
      <TText>Home Page</TText>
      {account ? (
        <InputButton
          title="Get started"
          onPress={() => {
            router.push('/home')
          }}
        />
      ) : (
        <ConnectWithGoogle />
      )}
    </Wrapper>
  )
}

const wallets = [
  inAppWallet({
    auth: {
      options: ['google'],
    },
    smartAccount: {
      chain: celo,
      sponsorGas: true,
    },
  }),
]
let isLoggedIn = false

// const thirdwebAuth = createAuth({
//   domain: 'localhost:3000',
//   client,
// })

const ConnectWithGoogle = () => {
  const { connect, isConnecting } = useConnect()
  return (
    <ConnectEmbed
      client={client}
      theme={'dark'}
      chain={celo}
      wallets={wallets}
      // auth={{
      //   async doLogin(params) {
      //     // fake delay
      //     await new Promise((resolve) => setTimeout(resolve, 2000))
      //     const verifiedPayload = await thirdwebAuth.verifyPayload(params)
      //     isLoggedIn = verifiedPayload.valid
      //   },
      //   async doLogout() {
      //     isLoggedIn = false
      //   },
      //   async getLoginPayload(params) {
      //     return thirdwebAuth.generatePayload(params)
      //   },
      //   async isLoggedIn(address) {
      //     return isLoggedIn
      //   },
      // }}
    />
  )
}

{
  /* <ConnectEmbed
        client={client}
        theme={theme || 'dark'}
        chain={ethereum}
        wallets={wallets}
        auth={{
          async doLogin(params) {
            // fake delay
            await new Promise((resolve) => setTimeout(resolve, 2000))
            const verifiedPayload = await thirdwebAuth.verifyPayload(params)
            isLoggedIn = verifiedPayload.valid
          },
          async doLogout() {
            isLoggedIn = false
          },
          async getLoginPayload(params) {
            return thirdwebAuth.generatePayload(params)
          },
          async isLoggedIn(address) {
            return isLoggedIn
          },
        }}
      /> */
}

// Connect
// <InputButton
//   title={isConnecting ? 'Connecting...' : 'Connect with Google'}
//   isLoading={isConnecting}
//   style={{ width: '75%' }}
//   onPress={() => {
//     connect(async () => {
//       const w = inAppWallet({
//         smartAccount: {
//           chain,
//           sponsorGas: true,
//         },
//       })
//       const res = await w.connect({
//         client,
//         strategy: 'google',
//       })
//       console.log('Connection result', res)
//       return w
//     })
//   }}
// />
