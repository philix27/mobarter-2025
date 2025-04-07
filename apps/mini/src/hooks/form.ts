import { useState } from 'react'

export function useAppForm<FormData>(defaultValues: FormData) {
  const [formData, setFormData] = useState<FormData>(defaultValues)
  const [errors, setErrors] = useState<Record<keyof FormData, string>>()

  function handleChange(field: keyof typeof formData, value: string | number) {
    setFormData({ ...formData!, [field]: value })
    setErrors({ ...errors!, [field]: '' }) // Clear error when typing
  }
  const clearAllErrors = () => {
    // setErrors(defaultValues)
  }

  const clearAll = () => {
    setFormData(defaultValues)
  }

  const clear = (field: keyof typeof formData) => {
    setFormData({ ...formData!, [field]: defaultValues![field] })
  }

  const getError = (err: keyof FormData) => {
    if (errors === undefined) return undefined
    if (errors[err] === undefined) return undefined
    return errors[err]
  }
  const fmtError = (name: keyof FormData, errMsg: any) => {
    // const baseErr = errors as any
    if (errMsg === undefined) return undefined
    if (errMsg[name] === undefined) return undefined
    if (errMsg[name]._errors === undefined) return undefined
    if (errMsg[name]._errors[0] === undefined) return undefined
    return "Required"
    // return errMsg[name]._errors[0]
  }

  return {
    formData,
    setFormData,
    errors,
    handleChange,
    setErrors,
    clear,
    clearAll,
    clearAllErrors,
    getError,
    fmtError,
  }
}
