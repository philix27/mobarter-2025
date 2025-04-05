import { Advert_GetResponse } from '@repo/api'
import React from 'react'
import { AppStores } from 'src/lib/zustand'

import SellConfirm from './Confirm'
import { SellDetails } from './Details'

export default function SellAd({ data }: { data: Advert_GetResponse }) {
  const store = AppStores.useAdvert()

  return (
    <div className="w-full items-center justify-center flex flex-col">
      {store.steps === '1EnterDetails' ? <SellDetails data={data} /> : <SellConfirm data={data} />}
    </div>
  )
}
