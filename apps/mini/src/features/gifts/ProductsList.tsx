/* eslint-disable @next/next/no-img-element */

/* eslint-disable react/jsx-no-comment-textnodes */
import { useQuery } from '@tanstack/react-query'
import React from 'react'

import { Spinner } from '@/src/components/Spinner'
// import { TileSimple } from '@/src/components/TileSimple'
import { getGiftCardProducts } from '@/src/lib/server'
import { AppStores } from '@/src/lib/zustand'

export function ProductsList() {
  const store = AppStores.useGiftCard()
  const { data, isLoading } = useQuery({
    queryKey: ['getGiftCardProducts'],
    queryFn: async () => {
      const res = await getGiftCardProducts(store.selectedCategory)
      return res
    },
  })

  if (isLoading)
    return (
      <div className="flex h-[calc(100vh-100px)] items-center justify-center">
        <Spinner />
      </div>
    )

  function getList() {
    if (!data) return []
    const filtered = data.filter((val) => val.category.id.toString() === store.selectedCategory)
    if (filtered.length > 0) return filtered
    return data
  }

  return (
    <div className="w-full grid grid-cols-2 gap-x-2 gap-y-2">
      {getList().map((val, i) => {
        return (
          <div key={i} className="w-full bg-card rounded-md">
            <img
              alt="banner"
              src={val.logoUrls[0]}
              className="rounded-md w-full object-cover h-[80px]"
            />
            <div className="w-full p-2">
              <p className="font-semibold text-sm">{val.brand.brandName}</p>
              <div className="flex items-center justify-between">
                <p className="font-light text-muted  text-[12px]">{val.category.name}</p>
                <p className="font-light text-muted  text-[10px]"> {val.status}</p>
              </div>
            </div>
          </div>
        )
      })}
    </div>
  )
}
