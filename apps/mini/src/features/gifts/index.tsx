import { useQuery } from '@tanstack/react-query'
import React from 'react'

import { Spinner } from '@/src/components/Spinner'
import { TileSimple } from '@/src/components/TileSimple'
import { getGiftCardProducts } from '@/src/lib/server'

export default function GiftCards() {
  const { data, isLoading } = useQuery({
    queryKey: ['getGiftCardProducts'],
    queryFn: async () => {
      const res = await getGiftCardProducts('NG')
      return res
    },
  })

  if (isLoading)
    return (
      <div className="flex h-[calc(100vh-100px)] items-center justify-center">
        <Spinner />
      </div>
    )
  return (
    <div className="w-full">
      {data &&
        data.map((val, i) => {
          return (
            <div key={i} className="w-full bg-card mb-1 p-2 rounded-md">
              <TileSimple
                imgUrl={val.logoUrls[0]}
                title={val.brand.brandName}
                desc={val.category.name}
              />
            </div>
          )
        })}
    </div>
  )
}
