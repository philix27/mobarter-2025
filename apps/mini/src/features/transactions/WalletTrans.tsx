import { useQuery } from '@tanstack/react-query'
import React from 'react'
import { Spinner } from 'src/components/Spinner'

// import { useAppContext } from 'src/Root/context'
// import { AppStores } from 'src/lib/zustand'
import { getTxHistory } from './func'

export default function WalletTransactions() {
  // const store = AppStores.useUser()
  //   const { evmAddress } = useAppContext()
  const { data, isLoading } = useQuery({
    queryKey: ['getTxHistory'],
    queryFn: async () => {
      // const res = await getTxHistory(store.walletAddress!)
      const res = await getTxHistory()
      console.log(res)
      return 'res'
    },
  })

  if (isLoading) return <Spinner />
  return (
    <div>
      <p>{JSON.stringify(data)}</p>
      {/* {data!.result.map((val, i) => (
        <div key={i}>{val.from} </div>
      ))} */}
    </div>
  )
}
