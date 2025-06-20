import React, { useState } from 'react'
import RNDateTimePicker, { DateTimePickerEvent } from '@react-native-community/datetimepicker'
import { Label } from './Label'
import { Row, TView } from '../ui'
import { ViewStyle } from 'react-native'
import { useColor } from '@/hooks'
import { Ionicons } from '@expo/vector-icons'
import dayjs from 'dayjs'
import ErrMsg from './ErrMsg'
// DateTimePickerAndroid.open(params: AndroidNativeProps)
// DateTimePickerAndroid.dismiss(mode: AndroidNativeProps['mode'])

export function InputDateTime(props: {
  style?: ViewStyle
  maximumDate?: Date
  minimumDate?: Date
  label?: string
  desc?: string
  error?: string
  onChange?: (text: string) => void
}) {
  const [show, setShow] = useState(false)
  const [dateSelected, setDateSelected] = useState<Date>(new Date(2000, 6, 27))
  const [dateFormatted, setFormatted] = useState<string>()
  const theme = useColor()

  const formatted = (date: Date) => dayjs(date).format('D MMMM, YYYY')
  const setDate = (event: DateTimePickerEvent, date?: Date) => {
    const {
      type,
      nativeEvent: { timestamp, utcOffset },
    } = event

    if (!date) return
    setDateSelected(date)

    setFormatted(formatted(date))
    if (props.onChange) {
      props.onChange(formatted(date))
    }
    console.log('Selected date', formatted(date))
  }

  return (
    <TView
      style={[
        {
          // backgroundColor: theme.primary,
          backgroundColor: theme.background,
          position: 'relative',
          // marginTop: 10,
          width: '100%',
        },
        props.style,
      ]}
    >
      {props.label && <Label label={props.label} />}
      <Row
        title={dateFormatted ? dateFormatted : 'Pick a date'}
        icon={<Ionicons name="time" size={20} color={'#fff'} />}
        onClick={() => {
          setShow(!show)
        }}
      />
      {props.error && <ErrMsg msg={props.error} />}
      {!show && (
        <RNDateTimePicker
          maximumDate={props.maximumDate}
          minimumDate={props.minimumDate}
          themeVariant="dark"
          mode="date"
          display="spinner"
          design="material"
          value={dateSelected}
          //   collapsable={false}
          onChange={setDate}
          style={{
            backgroundColor: theme.background,
          }}
        />
      )}
    </TView>
  )
}
