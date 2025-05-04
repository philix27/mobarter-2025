import { useRouter } from 'next/router'
import { useEffect } from 'react'
import Wrapper from 'src/components/wrapper/Wrapper'

import { AppStores } from '../lib/zustand'

export default function HomePage() {
  const router = useRouter()
  const store = AppStores.useSettings()
  useEffect(() => {
    if (store.appEnv === 'MINIPAY') {
      void router.replace('/minipay')
      return
    }
    void router.replace('/tg')
  }, [router, store.appEnv])

  return (
    <Wrapper>
      <p>Welcome</p>
    </Wrapper>
  )
}
