import { BtmSheet } from '@/components/layout'
import { CryptoTokensList, ITokenCategory } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'
import React, { useRef } from 'react'
import { TView, Row } from '@/components'
import { Label } from '@/components/forms'
import { useColor, AppStores } from '@/lib'
import { Ionicons } from '@expo/vector-icons'
import SelectCountry from './Comp'

export function SelectCountryCard() {
  return (
    <>
      <TView>
        <Label label="Country" />
        {/* <Row
          title={token?.name ? token.name : 'Select token'}
          imgUrl={token?.logoUrl}
          desc={`Available: ${token?.balance} ${token?.symbol}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            confirmModal.current.open()
          }}
        /> */}
        <SelectCountry />
      </TView>
    </>
  )
}
