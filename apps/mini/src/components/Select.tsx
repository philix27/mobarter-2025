'use client'

import Select from 'react-select'

import { BottomNote, Label } from './comps'
import {  useThemeColor } from '../styles/Color'

export const AppSelect = (props: {
  label?: string
  error?: string
  value?: string
  desc?: string
  onChange: (newValue: string) => void
  data: {
    label: string
    value: string
  }[]
}) => {

const theme = useThemeColor()
  const bgCard = theme.bg
  const textColor = theme.text

  const borderColor = (isFocused: boolean) => (isFocused ? theme.primary : theme.muted)
  const outlineColor = (isFocused: boolean) => (isFocused ? theme.primary : theme.muted)
  return (
    <div className="w-full">
      {props.label && <Label>{props.label}</Label>}
      <Select
        options={props.data}
        value={props.value}
        className="w-full m-0"
        onChange={(newValue: any) => {
          props.onChange(newValue!.value!)
        }}
        styles={{
          menu: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderStyle: 'solid',
            marginTop: 0,
            borderRadius: 5,
          }),
          option: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
          }),
          indicatorsContainer: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderRadius: 5,
          }),
          singleValue: (base: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
          }),
          container: (base: any, state: { isFocused: boolean }) => ({
            ...base,
            background: bgCard,
            color: textColor,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderStyle: 'none',
            margin: 0,
            borderRadius: 5,
          }),
          valueContainer: (base: any) => ({
            ...base,
            background: bgCard,
            color: textColor,
            borderRadius: 5,
          }),
          control: (baseStyles: any, state: any) => ({
            ...baseStyles,
            color: textColor,
            background: bgCard,
            borderColor: borderColor(state.isFocused),
            borderStyle: 'solid',
            borderRadius: 5,
          }),
        }}
      />
      {props.error && <p className="text-destructive text-[13px] mt-1">{props.error}</p>}
      {props.desc && <BottomNote>{props.desc}</BottomNote>}
    </div>
  )
}
