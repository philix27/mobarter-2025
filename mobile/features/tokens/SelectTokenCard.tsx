import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { BtmSheet } from '@/components/layout'
import { CryptoTokensList, ITokenCategory } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'
import React, { useRef } from 'react'
import { TView, Row } from '@/components'
import { Label } from '@/components/forms'
import { useColor, AppStores } from '@/lib'
import { Ionicons } from '@expo/vector-icons'

export function SelectTokenCard({
  tokenErr,
  ...props
}: {
  tokenErr: string | undefined
  group?: ITokenCategory
}) {
  const theme = useColor()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const confirmModal = useRef<RBSheetRef>(null)
  return (
    <>
      <TView>
        <Label label="Currency" />
        <Row
          title={token?.name ? token.name : 'Select token'}
          imgUrl={token?.logoUrl}
          desc={`Available: ${token?.balance} ${token?.symbol}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            confirmModal.current.open()
          }}
        />
        {tokenErr && <ErrMsg msg={tokenErr} />}
      </TView>
      <BtmSheet.Modal
        title="Select a token"
        ref={confirmModal!}
        style={{
          width: '100%',
        }}
      >
        <CryptoTokensList variant={props.group} />
      </BtmSheet.Modal>
    </>
  )
}
export function PayableTokenCard({ tokenErr }: { tokenErr: string | undefined }) {
  return <SelectTokenCard tokenErr={tokenErr} group="PAYABLE" />
}
