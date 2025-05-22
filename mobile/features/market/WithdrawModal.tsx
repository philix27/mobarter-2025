import { Row } from '@/components/ui'
import { TView } from '@/components/ui/TView'
import { useColor } from '@/hooks/useColor'
import { AntDesign } from '@expo/vector-icons'
import React from 'react'

export default function WithdrawModal() {
  const theme = useColor()
  return (
    <TView>
      <Row
        title={'Sell'}
        desc={'Withdraw crypto directly to your bank account'}
        icon={<AntDesign name="arrowup" size={24} color="#fff" />}
        onClick={() => {
          // router.push("/(tabs)/p2p");
        }}
      />
      <Row
        title={'Buy'}
        desc={'Buy cryptocurrency'}
        icon={<AntDesign name="arrowdown" size={24} color="#fff" />}
        onClick={() => {
          // router.push("/(core)/direct-exchange");
        }}
      />
    </TView>
  )
}
