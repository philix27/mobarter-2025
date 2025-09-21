import { Row, toast } from '@/components/ui'
import { TView } from '@/components/TView'
import { AntDesign } from '@expo/vector-icons'
import { router } from 'expo-router'
import React from 'react'

export default function WithdrawModal(props: { onClick: VoidFunction }) {
  return (
    <TView>
      <Row
        title={'Sell'}
        desc={'Withdraw crypto directly to your bank account'}
        icon={<AntDesign name="arrowup" size={24} color="#fff" />}
        onClick={() => {
          router.push('/orders/sell')
          props.onClick()
        }}
        style={{ paddingVertical: 14 }}
      />
      <Row
        title={'Buy'}
        desc={'Buy cryptocurrency'}
        icon={<AntDesign name="arrowdown" size={24} color="#fff" />}
        onClick={() => {
          toast.info('Coming soon!')
          // router.push('/orders/buy')
          props.onClick()
        }}
        style={{ paddingVertical: 14 }}
      />
    </TView>
  )
}
