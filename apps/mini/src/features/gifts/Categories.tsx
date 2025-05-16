import { useQuery } from '@tanstack/react-query';
import React from 'react';



import { AppSelect } from '@/src/components/Select';
import { Spinner } from '@/src/components/Spinner';
import { getGiftCardCategories } from '@/src/lib/server';
import { AppStores } from '@/src/lib/zustand';


export function GCcategories() {
  const store = AppStores.useGiftCard()
  const { data, isLoading } = useQuery({
    queryKey: ['getGiftCardCategories'],
    queryFn: async () => {
      const res = await getGiftCardCategories()
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
    <div className="w-full mb-3">
      {data && (
        <AppSelect
          label="Categories"
          onChange={(id) => {
            store.update({selectedCategory: id})
            return
          }}
          data={data.map((val) => {
            return {
              label: val.name,
              value: `${val.id}`,
            }
          })}
        />
      )}
    </div>
  )
}