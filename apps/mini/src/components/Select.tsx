'use client'

import Select from 'react-select'
import { useDarkMode } from 'src/styles/mediaQueries'

import { BottomNote, Label } from './comps'

export const AppSelect = (props: {
  label?: string
  error?: string
  desc?: string
  onChange: (newValue: string) => void
  data: {
    label: string
    value: string
  }[]
}) => {
  const { isDarkMode } = useDarkMode()
  const isDark = isDarkMode

  const bgColor = isDark ? '#282828' : '#e6e6e6'
  const textColor = isDark ? '#e3e6e6' : '#535353'
  const borderColor = (isFocused: boolean) => (isFocused ? '#f24500' : '#4c4847')
  const outlineColor = (isFocused: boolean) => (isFocused ? '#f24500' : '#4c4847')
  return (
    <div className="w-full">
      {props.label && <Label>{props.label}</Label>}
      <Select
        options={props.data}
        className="w-full m-0"
        onChange={(newValue: any) => {
          props.onChange(newValue!.value!)
        }}
        styles={{
          menu: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgColor,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderStyle: 'solid',
            marginTop: 0,
            borderRadius: 5,
          }),
          option: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgColor,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
          }),
          indicatorsContainer: (base: any, state: any) => ({
            ...base,
            color: textColor,
            background: bgColor,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderRadius: 5,
          }),
          singleValue: (base: any) => ({
            ...base,
            color: textColor,
            background: bgColor,
          }),
          container: (base: any, state: { isFocused: boolean }) => ({
            ...base,
            background: bgColor,
            color: textColor,
            borderColor: borderColor(state.isFocused),
            outline: outlineColor(state.isFocused),
            borderStyle: 'none',
            margin: 0,
            borderRadius: 5,
          }),
          valueContainer: (base: any) => ({
            ...base,
            background: bgColor,
            color: textColor,
            borderRadius: 5,
          }),
          control: (baseStyles: any, state: any) => ({
            ...baseStyles,
            color: textColor,
            background: bgColor,
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
