import { BtmSheet } from '@/components/layout'
import { CryptoTokensList, ITokenCategory } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'
import React, { useRef } from 'react'
import { TView, Row } from '@/components'
import { Label } from '@/components/forms'
import { useColor, AppStores } from '@/lib'
import { Ionicons } from '@expo/vector-icons'

export function SelectTokenCard({ ...props }: { group?: ITokenCategory }) {
  const theme = useColor()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const confirmModal = BtmSheet.useRef()
  return (
    <>
      <TView>
        <Label label="Pay with" />
        <Row
          title={token?.name ? token.name : 'Select token'}
          imgUrl={token?.logoUrl}
          desc={`Available: ${token?.balance} ${token?.symbol}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            confirmModal.current.open()
          }}
        />
        {token === null && <ErrMsg msg={'Please select a token'} />}
      </TView>
      <BtmSheet.Modal title="Select a token" ref={confirmModal!}>
        <CryptoTokensList variant={props.group} />
      </BtmSheet.Modal>
    </>
  )
}
export function PayableTokenCard() {
  return <SelectTokenCard group="PAYABLE" />
}
