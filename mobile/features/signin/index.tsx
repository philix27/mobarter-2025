import { Wrapper } from '@/components'
import { TText, TView } from '@/components/ui'
import { Link, router } from 'expo-router'
import { Image } from 'react-native'
import { ConnectEmbed, useActiveAccount, useConnect } from 'thirdweb/react'
import { getUserEmail, inAppWallet } from 'thirdweb/wallets/in-app'
import { AppStores, chain, client, useColor } from '@/lib'
import { celo } from 'thirdweb/chains'
import { InputButton } from '@/components/forms'
import { Api } from '@/graphql'
import { useResponse } from '@/lib/providers'

export default function SignIn() {
  const account = useActiveAccount()
  const theme = useColor()
  const conn = useConnect()
  account?.sendTransaction({
    chainId: 0,
  })

  return (
    <Wrapper>
      <TView style={{ height: '50%', paddingVertical: 50 }}>
        <TText style={{ fontWeight: '900', fontSize: 30, lineHeight: 37 }}>Image</TText>
      </TView>
      {/* <Image
        source={{ uri: require('./icon.png') }}
        style={{ height: 35, width: 35, marginRight: 12, borderRadius: 20 }}
      /> */}
      <TView style={{ maxWidth: '90%', alignItems: 'center' }}>
        <TText
          style={{
            fontWeight: '700',
            fontSize: 28,
            textAlign: 'center',
            marginBottom: 10,
            lineHeight: 37,
          }}
        >
          Trade & Save Smartly
        </TText>
        <TText
          style={{
            fontWeight: '400',
            maxWidth: '80%',
            fontSize: 16,
            color: theme.muted,
            marginBottom: 30,
            textAlign: 'center',
          }}
        >
          Pay bills, Save and Trade with your crypto assets.
        </TText>
        {account ? (
          <InputButton
            title="Get started"
            onPress={() => {
              router.push('/home')
            }}
          />
        ) : (
          <Btn />
        )}
      </TView>
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

function Btn() {
  const store = AppStores.useUserInfo()
  const { connect, isConnecting } = useConnect()
  const [login] = Api.useAuth_ThridwebLogin()
  const response = useResponse()

  const onSignIn = async () => {
    response.showLoading(true)

    const w = await connect(async () => {
      const w = inAppWallet({
        smartAccount: {
          chain,
          sponsorGas: true,
        },
      })

      await w.connect({
        client,
        strategy: 'google',
      })

      return w
    })

    const account = w?.getAccount()
    const signature = await account!.signMessage({ message: 'Login Man' })
    const address = account?.address
    const email = await getUserEmail({ client })

    console.log('Attempt login')
    await login({
      variables: {
        input: {
          // walletAddress: '0x14CDFC83F034209a5f949C617c8D4eC157317edD',
          // email: 'philixbob@gmail.com',
          // payload: 'Lemon Grass',
          email: email!,
          walletAddress: address!,
          payload: signature,
        },
      },
      onCompleted: (v) => {
        store.update({ token: v.auth_thirdwebLogin.token! })
        // console.log('Error - X9', v)
        response.showSuccess('Login Successful')
        setTimeout(() => {
          router.push('/home')
        }, 2000)
      },
      onError: (e) => {
        // console.log('Error cause - X9', e.cause?.message)
        // console.log('Error cause - X9', e.cause?.path)
        // console.log('Error cause - X9', e.cause?.stack)
        // console.log('Error msg - X9', e.message)
        // console.log('Error name- X9', e.name)
        response.showError('Login Failed')
      },
    })
  }

  return (
    <InputButton
      title={isConnecting ? 'Connecting...' : 'Connect with Google'}
      isLoading={isConnecting}
      style={{ width: '75%', paddingVertical: 12 }}
      onPress={onSignIn}
    />
  )
}
