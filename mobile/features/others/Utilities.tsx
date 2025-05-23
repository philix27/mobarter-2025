import { InputText } from '@/components/forms'
import { Wrapper } from '@/components/layout'
import React from 'react'
import { z } from 'zod'
import { AppStores, useAppForm, IEvents } from '@/lib'

const event: IEvents = 'AUTH_LOGIN'

const formSchema = z.object({
  email: z.string().email('Invalid email format'),
  password: z.string().min(6, 'Password must be at least 6 characters'),
})

export default function UtilityComp() {
  const store = AppStores.useUserInfo()

  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm({
    email: '',
    password: '',
  })

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData)
  }
  return (
    <Wrapper style={{ rowGap: 10 }}>
      <InputText
        label={'Balance'}
        value={formData.email}
        keyboardType="email-address"
        onChangeText={(text) => handleChange('email', text.toLowerCase())}
        placeholder={'Enter email'}
        error={errors!.email === undefined ? undefined : errors!.email}
      />

      <InputText
        label={'Phone'}
        value={formData.password}
        onChangeText={(text) => handleChange('password', text)}
        placeholder={'Enter password'}
        error={errors!.password === undefined ? undefined : errors!.password}
      />
      <InputText
        label={'Network'}
        value={formData.password}
        onChangeText={(text) => handleChange('password', text)}
        placeholder={'Enter password'}
        error={errors!.password === undefined ? undefined : errors!.password}
      />
      <InputText
        label={'Amount'}
        value={formData.password}
        onChangeText={(text) => handleChange('password', text)}
        placeholder={'Enter password'}
        error={errors!.password === undefined ? undefined : errors!.password}
      />
      <InputText
        label={'To Pay'}
        value={formData.password}
        onChangeText={(text) => handleChange('password', text)}
        placeholder={'Enter password'}
        error={errors!.password === undefined ? undefined : errors!.password}
      />
    </Wrapper>
  )
}
