import { Row, TView } from '@/components/ui'
import React, { useState } from 'react'
import { useColor } from '@/hooks/useColor'
import { ViewStyle } from 'react-native'
import { BtmSheet } from '@/components/layout'
import { ErrMsg } from '@/components/forms'

export function InputSelect(params: {
  label?: string
  value?: string
  placeholder?: string
  style?: ViewStyle
  error?: string | undefined
  items: { label: string; value: string; icon?: string }[]
  onValueChange?: (itemValue: string) => void
}) {
  const theme = useColor()

  const refRBSheet = BtmSheet.useRef()
  const [selectedValue, setSelectedValue] = useState(params.value)

  const getLabel = () => {
    if (selectedValue === undefined)
      return {
        label: 'Select Operator',
        value: undefined,
        icon: '',
      }
    const active = params.items.filter((val, i) => val.value === selectedValue)[0]
    return active
  }
  return (
    <>
      <TView style={{ width: '100%' }}>
        <Row
          title={getLabel().label}
          imgUrl={getLabel().icon}
          onClick={() => {
            refRBSheet.current!.open()
          }}
        />
        {params.error && <ErrMsg msg={params.error} />}
      </TView>
      <BtmSheet.Modal ref={refRBSheet!}>
        <TView>
          {params.items.map((item, i) => (
            <Row
              key={i}
              title={item.label}
              imgUrl={item.icon}
              desc="Operator"
              onClick={() => {
                setSelectedValue(item.value)
                if (params.onValueChange) {
                  params.onValueChange(item.value)
                }
              }}
            />
          ))}
        </TView>
      </BtmSheet.Modal>
    </>
  )
}
