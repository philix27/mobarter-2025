import { Wrapper } from '@/components'
import { TText, TView } from '@/components/ui'
import { router } from 'expo-router'
import { Image } from 'react-native'
import { useActiveAccount, useConnect } from 'thirdweb/react'
import { getUserEmail, inAppWallet } from 'thirdweb/wallets/in-app'
import { AppStores, chain, client, useColor } from '@/lib'
import { InputButton } from '@/components/forms'
import { Api } from '@/graphql'

export default function SignIn() {
  const account = useActiveAccount()
  const theme = useColor()
  const conn = useConnect()
  account?.sendTransaction({
    chainId: 0,
  })

  return (
    <Wrapper>
      <TView style={{ height: '47.5%', paddingVertical: 100 }}>
        <Image
          source={{ uri: 'https://images.pexels.com/photos/14891535/pexels-photo-14891535.jpeg' }}
          style={{ height: 100, width: 100, marginRight: 12, borderRadius: 200 }}
        />
      </TView>

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
        {!account ? (
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

function Btn() {
  const store = AppStores.useUserInfo()
  const { connect, isConnecting } = useConnect()
  const [login] = Api.useAuth_ThridwebLogin()
  // const response = useResponse()

  const onSignIn = async () => {
    // response.showLoading(true)

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
          email: email!,
          walletAddress: address!,
          payload: signature,
        },
      },
      onCompleted: (v) => {
        store.update({ token: v.auth_thirdwebLogin.token! })

        // response.showSuccess('Login Successful')
        setTimeout(() => {
          router.push('/home')
        }, 2000)
      },
      onError: (e) => {
        // response.showError('Login Failed')
      },
    })
  }

  return (
    <InputButton
      title={isConnecting ? 'Connecting...' : 'Connect with Google'}
      isLoading={isConnecting}
      style={{ width: '75%', paddingVertical: 10 }}
      onPress={onSignIn}
    />
  )
}
