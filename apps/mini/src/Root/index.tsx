import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { type PropsWithChildren } from 'react'
import { Toaster } from 'sonner'
import { Spinner } from '../components/Spinner'
import { useDidMount } from '../hooks/useDidMount'
import { AppStores } from '../lib/zustand'


const apollo = (token: string) => {
  // try {
  const client = new ApolloClient({
    uri: process.env.NEXT_PUBLIC_BACKEND_SERVER,
    headers: {
      Authorization: `Bearer ${token}`,
    },
    cache: new InMemoryCache(),
  })
  return client
  // } catch (e) {
  //   // logger.error('Initialization err' + e)
  //   return undefined
  // }
}

const queryClient = new QueryClient()
export function Root(props: PropsWithChildren) {
  const store = AppStores.useUser()
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()
  if (!didMount) return <Spinner />

  return (
    <QueryClientProvider client={queryClient}>
      <ApolloProvider client={apollo(store.token)!}>
        <Others>{props.children}</Others>
      </ApolloProvider>
    </QueryClientProvider>
  )
}

function Others(props: PropsWithChildren) {
  return (
    <>
      {props.children}
      <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
    </>
  )
}
