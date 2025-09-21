import { Row, TView } from '@/components'
import React, { useState } from 'react'
import { useColor } from '@/hooks/useColor'
import { ScrollView, ViewStyle } from 'react-native'
import { Label } from './Label'
import { BtmSheet } from '@/components/layout'
import ErrMsg from './ErrMsg'
import { Ionicons } from '@expo/vector-icons'

export function InputSelect(params: {
  label?: string
  value?: string
  placeholder?: string
  style?: ViewStyle
  error?: string | undefined
  items: { label: string; value: string; icon?: string; desc?: string }[]
  onValueChange?: (itemValue: string) => void
}) {
  const theme = useColor()

  const refRBSheet = BtmSheet.useRef()
  const [selectedValue, setSelectedValue] = useState(params.value)

  const getActive = () => {
    const active = params.items.filter((val, i) => val.value === selectedValue)[0]
    return active
  }
  return (
    <>
      <TView style={{ width: '100%' }}>
        {params.label && <Label label={params.label} />}
        <Row
          title={!selectedValue ? 'Select' : getActive().label}
          desc={getActive()?.desc}
          imgUrl={getActive()?.icon}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            refRBSheet.current!.open()
          }}
        />
        {params.error && <ErrMsg msg={params.error} />}
      </TView>

      <BtmSheet.Modal ref={refRBSheet!}>
        <ScrollView style={{ width: '100%', paddingBottom: 20 }}>
          {params.items.map((item, i) => (
            <Row
              key={i}
              title={item.label}
              desc={item.value}
              imgUrl={item.icon}
              onClick={() => {
                setSelectedValue(item.value)
                if (params.onValueChange) {
                  params.onValueChange(item.value)
                }
              }}
            />
          ))}
        </ScrollView>
      </BtmSheet.Modal>
    </>
  )
}
