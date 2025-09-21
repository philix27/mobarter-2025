import { InputButton, InputSelect, InputText } from '@/components/forms'
import { Row, toast, TText, TView } from '@/components'
import React from 'react'
import { create } from 'zustand'
import { handleAction } from './handleActions'

// ---------- STATE MANAGEMENT ----------
const useUIStore = create((set) => ({
  schema: null,
  formData: {},
  errors: {},
  setSchema: (schema: any) => set({ schema }),
  setFormValue: (key: any, value: any) =>
    set((state: { formData: any; errors: any }) => ({
      formData: { ...state.formData, [key]: value },
      errors: { ...state.errors, [key]: undefined }, // clear error
    })),
  setErrors: (errors: any) => set({ errors }),
}))

// const validateForm = (schema: { components: any[] }, formData: { [x: string]: any }) => {
//   const errors = {}

//   schema.components.forEach((comp) => {
//     const { name, rules } = comp.props || {}
//     if (comp.type === 'input' && rules && name) {
//       const value = formData[name]
//       if (rules.required && !value) {
//         errors[name] = 'This field is required'
//       } else if (rules.pattern && !new RegExp(rules.pattern).test(value)) {
//         errors[name] = 'Invalid format'
//       }
//     }
//   })

//   return errors
// }

// ---------- COMPONENTS MAPPER ----------
export const RenderComponents = (params: { components?: any }) => {
  const { components } = params
  const { setFormValue, formData, errors } = useUIStore()

  if (!components) return null
  const { type: compsType, props } = components

  const type = compsType as string

  return {
    Row: <Row {...props} title={props.title} onClick={handleAction(props.action, props.target)} />,
    Text: <TText style={props.style}>{props.text}</TText>,
    InputText: (
      <InputText
        style={props.style}
        placeholder={props.placeholder}
        value={formData[props.name] || ''}
        onChangeText={(val) => setFormValue(props.name, val)}
        error={errors[props.name]}
      />
    ),
    InputSelect: (
      <InputSelect
        style={props.style}
        placeholder={props.placeholder}
        value={formData[props.name] || ''}
        onValueChange={(val) => setFormValue(props.name, val)}
        items={props.items}
      />
    ),
    View: (
      <TView style={props.style}>
        {props.children?.map((child: any, index: number) => {
          console.log('A  child component:', child)
          return (
            <React.Fragment key={index}>
              <RenderComponents components={child} />
            </React.Fragment>
          )
        })}
      </TView>
    ),
    Button: (
      <InputButton
        title={props.title}
        onPress={async () => {
          handleAction(props.action, props.target)
        }}
      />
    ),
  }[type]
}
