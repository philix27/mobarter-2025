import { useState } from "react"

export function useAppForm<FormData>(defaultValues: FormData) {
  const [formData, setFormData] = useState<FormData>(defaultValues!)
  const [errors, setErrors] = useState<FormData>(defaultValues!)

  const handleChange = (field: keyof typeof formData, value: string) => {
    setFormData({ ...formData!, [field]: value })
    setErrors({ ...errors!, [field]: '' }) // Clear error when typing
  }

  return { formData, setFormData, errors, handleChange, setErrors }
}
