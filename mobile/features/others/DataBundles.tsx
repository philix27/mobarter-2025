import { InputText } from '@/components/forms'
import { Wrapper } from '@/components/layout'
import React from 'react'
import { router } from 'expo-router'
import { z } from 'zod'
import { useAppForm,  log, IEvents } from '@/lib'
import { AppStores } from '@/lib/zustand'
import Toast from 'react-native-toast-message'

const event: IEvents = 'AUTH_LOGIN'

const formSchema = z.object({
  email: z.string().email('Invalid email format'),
  password: z.string().min(6, 'Password must be at least 6 characters'),
})

export default function DataBundlesComp() {
  const store = AppStores.useUserInfo()
  // const [login, { loading: isLoading }] = ApiHooks.useAuthLogin()
  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm({
    email: '',
    password: '',
  })

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData)

    if (!validation.success) {
      const errorMessages = validation.error.format()
      setErrors({
        email: errorMessages.email?._errors[0] || '',
        password: errorMessages.password?._errors[0] || '',
      })
    } else {
      console.log('DataBefore of login: ', formData)
      login({
        variables: {
          input: {
            email: formData.email.toLowerCase(),
            password: formData.password,
          },
        },
        onCompleted: (res) => {
          store.update({
            ...res.auth_login,
          })
          setFormData({ email: '', password: '' })
          setErrors({ email: '', password: '' })
          log.info(event, res.auth_login.email)
          router.push('/home')
        },
        onError: (error, clientOptions) => {
          console.log('ResultErr of login: ', JSON.stringify(error))
          log.error(event, error.message)
          Toast.show({
            type: 'error',
            text1: error.message,
            text2: 'Oops, an error occurred!',
          })
        },
      })
    }
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
