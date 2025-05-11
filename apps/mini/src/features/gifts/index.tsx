import { useQuery } from '@tanstack/react-query';
import React from 'react';



import { GCcategories } from './Categories';
import { Spinner } from '@/src/components/Spinner';
import { TileSimple } from '@/src/components/TileSimple';
import { getGiftCardProducts } from '@/src/lib/server';
import { AppStores } from '@/src/lib/zustand';


export default function GiftCards() {
  return (
    <div className="w-full">
      <GCcategories />
      <ProductsList />
    </div>
  )
}

export function ProductsList() {
  const store = AppStores.useGiftCard()
  const { data, isLoading } = useQuery({
    queryKey: ['getGiftCardProducts_' + store.selectedCategory],
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