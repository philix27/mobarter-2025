import { TText, TView } from '@/components/ui'
import React, { useState } from 'react'

import { Picker } from '@react-native-picker/picker'
import { useColor } from '@/hooks/useColor'
import { TouchableOpacity, ViewStyle } from 'react-native'
import { Label } from './Label'
import { BtmSheet } from '@/components/layout'
import ErrMsg from './ErrMsg'

export function InputSelect(params: {
  label?: string
  value?: string
  placeholder?: string
  style?: ViewStyle
  error?: string | undefined
  items: { label: string; value: string }[]
  onValueChange?: (itemValue: string) => void
}) {
  const theme = useColor()

  const refRBSheet = BtmSheet.useRef()
  const [selectedValue, setSelectedValue] = useState(params.value)

  const getLabel = () => {
    const active = params.items.filter((val, i) => val.value === selectedValue)[0]
    return active.label
  }
  return (
    <>
      <TView style={{ width: '100%' }}>
        {params.label && (
          <TView
            style={{
              width: '100%',
              margin: 0,
              padding: 0,
            }}
          >
            <Label label={params.label} />
          </TView>
        )}
        <TouchableOpacity
          style={{ width: '100%', margin: 0, padding: 0 }}
          onPress={() => {
            refRBSheet.current!.open()
          }}
        >
          <TView
            style={[
              {
                backgroundColor: theme.card,
                width: '100%',
                borderWidth: 1,
                borderRadius: 5,
                paddingHorizontal: 10,
                paddingVertical: 10,
                minWidth: '90%',
                margin: 0,
                padding: 0,
              },
              params.style,
            ]}
          >
            <TText>{selectedValue === undefined ? params.placeholder : getLabel()}</TText>
          </TView>
        </TouchableOpacity>
        {params.error && <ErrMsg msg={params.error} />}
      </TView>
      <BtmSheet.Modal ref={refRBSheet!}>
        <Picker
          style={{
            width: '100%',
            backgroundColor: theme.background,
            height: 'auto',
          }}
          selectedValue={selectedValue}
          onValueChange={(value) => {
            setSelectedValue(value)
            if (params.onValueChange) {
              params.onValueChange(value)
            }
          }}
          collapsable
          mode="dropdown"
        >
          {params.items.map((item, i) => (
            <Picker.Item key={i} label={item.label} value={item.value} />
          ))}
        </Picker>
      </BtmSheet.Modal>
    </>
  )
}
