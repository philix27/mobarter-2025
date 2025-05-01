'use client'

import { ComponentType } from 'react'
import Select, { GroupBase, OptionProps, PlaceholderProps } from 'react-select'

import { useThemeColor } from '../styles/Color'

import { BottomNote, Label } from './comps'

const CustomOption: ComponentType<OptionProps<any, false, GroupBase<any>>> = (props) =>
  !props.isDisabled ? (
    <div {...props.innerProps}>
      <p className="w-full bg-card shadow-md py-[6px] px-3 text-[13.5px] hover:bg-primary">
        {props.label}
      </p>
    </div>
  ) : null

const CustomPlaceholder: ComponentType<PlaceholderProps<any, false, GroupBase<any>>> = (props) =>
  !props.isDisabled ? (
    <p {...props.innerProps} className="w-full bg-card shadow-md px-3 text-muted" />
  ) : null

export const AppSelect = (props: {
  label?: string
  error?: string
  value?: string
  desc?: string
  useBg?: string
  onChange: (newValue: string) => void
  data: {
    label: string
    value: string
  }[]
}) => {
  const theme = useThemeColor()
  const bgCard = props.useBg ? theme.bg : theme.card
  const textColor = theme.text

  return (
    <div className="w-full">
      {props.label && <Label>{props.label}</Label>}
      <Select
        isSearchable
        components={{ Option: CustomOption, Placeholder: CustomPlaceholder }}
        options={props.data}
        value={props.value}
        className="w-full m-0"
        onChange={(newValue: any) => {
          props.onChange(newValue!.value!)
        }}
        styles={{
          menu: (base: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
            borderStyle: 'none',
            outlineStyle: 'none',
            marginTop: 0,
            borderRadius: 5,
          }),
          option: (base: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
          }),
          indicatorsContainer: (base: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
            borderStyle: 'none',
            outlineStyle: 'none',
            borderRadius: 5,
          }),
          singleValue: (base: any) => ({
            ...base,
            color: textColor,
            background: bgCard,
          }),
          container: (base: any) => ({
            ...base,
            background: bgCard,
            color: textColor,
            borderStyle: 'none',
            outlineStyle: 'none',
            margin: 0,
            borderRadius: 5,
          }),
          valueContainer: (base: any) => ({
            ...base,
            background: bgCard,
            color: textColor,
            borderRadius: 5,
            borderStyle: 'none',
            outlineStyle: 'none',
          }),
          control: (baseStyles: any) => ({
            ...baseStyles,
            color: textColor,
            background: bgCard,
            borderStyle: 'none',
            outlineStyle: 'none',
            borderRadius: 5,
          }),
        }}
      />
      {props.error && <p className="text-destructive text-[13px] mt-1">{props.error}</p>}
      {props.desc && <BottomNote>{props.desc}</BottomNote>}
    </div>
  )
}
