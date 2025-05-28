import { useAuth, useClerk, useUser } from '@clerk/clerk-expo'
import * as Linking from 'expo-linking'
import React, { useEffect, useState } from 'react'
import { Button, Text } from 'react-native'
import { Link } from 'expo-router'
import { useOAuth } from '@clerk/clerk-expo'

import { Wrapper } from '@/components'
import { InputText } from '@/components/forms'
import { AppStores } from '@/lib'
import { generateWallet, uploadEncryptedKey, useUserGoogleToken } from './wallet'
import { TText } from '@/components/ui'

export default function SignIn() {
  const store = AppStores.useAuth()

  if (store.steps === 'WELCOME') return <Welcome />
  if (store.steps === 'SET_PASSWORD') return <SetupPassword />
  if (store.steps === 'SAVE_WALLET') return <SaveWallet />
  if (store.steps === 'CONGRATS') return <Congrats />
  return <Welcome />
}

function Welcome() {
  const { startOAuthFlow } = useOAuth({ strategy: 'oauth_google' })
  const { isLoaded, isSignedIn, userId, sessionId, getToken } = useAuth()
  const store = AppStores.useAuth()

  const onPress = React.useCallback(async () => {
    try {
      const { createdSessionId, signIn, signUp, setActive, authSessionResult } =
        await startOAuthFlow({
          redirectUrl: Linking.createURL('/home', { scheme: 'myapp' }),
        })

      // If sign in was successful, set the active session
      if (createdSessionId) {
        setActive!({ session: createdSessionId })

        store.update({ steps: 'SAVE_WALLET' })
      } else {
        // Use signIn or signUp returned from startOAuthFlow
        // for next steps, such as MFA
      }
    } catch (err) {
      // See https://clerk.com/docs/custom-flows/error-handling
      // for more info on error handling
      console.error(JSON.stringify(err, null, 2))
    }
  }, [])
  return (
    <Wrapper>
      <Text>Welcome</Text>
      <Button title="Sign in with Google" onPress={onPress} />
    </Wrapper>
  )
}

function SetupPassword() {
  const store = AppStores.useAuth()
  const [pass, setPass] = useState('')

  const onSubmit = React.useCallback(async () => {
    store.update({
      password: pass,
      steps: 'SAVE_WALLET',
    })
  }, [])
  return (
    <Wrapper>
      <Text>Setup Password</Text>
      <InputText
        label="Enter your 6 digits password"
        placeholder="924706"
        value={pass}
        onChangeText={setPass}
      />
      <Button title="Setup password" onPress={onSubmit} />
    </Wrapper>
  )
}
function SaveWallet() {
  const store = AppStores.useAuth()
  const drive = useUserGoogleToken()
  const [wallet, setWallet] = useState<{
    seedPhrase: string
    privateKey: string
    address: string
  }>()

  useEffect(() => {
    async function gen() {
      const r = generateWallet()
      setWallet(r)
    }
    gen()
  }, [])

  //   todo: useEffect or onClick generate user wallet
  //   todo: store wallet info in store
  const onSubmit = React.useCallback(async () => {
    //   todo: using the generated wallet, encrypt the data with password
    const fileId = await uploadEncryptedKey(await drive, store.password!)
    //   todo: send password to google drive
    store.update({ fileId: fileId! })
  }, [])

  return (
    <Wrapper>
      <TText>Setup Password</TText>
      <TText>Wallet Info: {JSON.stringify(wallet)}</TText>
      <Button title="Generate Wallet" onPress={onSubmit} />
    </Wrapper>
  )
}

function Congrats() {
  const store = AppStores.useAuth()
  return (
    <Wrapper>
      <Link href="/">
        <Text>Congrats, your account setup</Text>
      </Link>
    </Wrapper>
  )
}
