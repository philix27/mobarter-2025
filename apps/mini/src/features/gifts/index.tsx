import React from 'react'

import { GCcategories } from './Categories'
import { ProductsList } from './ProductsList'

export default function GiftCards() {
  return (
    <div className="w-full">
      <GCcategories />
      <ProductsList />
    </div>
  )
}
