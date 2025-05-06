import {  Copy } from 'lucide-react'
import React, { useState } from 'react'
import { toast } from 'sonner'

import { Button } from '@/src/components/Button'
import Input from '@/src/components/Input'
import { countryCode } from '@/src/lib'
import { pasteTextFromClipboard } from '@/src/lib/utils'
import { AppStores } from '@/src/lib/zustand'
import Container from './Container'

type ISteps = 'ENTER_DETAILS' | 'ENTER_OTP' | 'SUCCESS'
export default function VerifyEmail() {
  const [steps, setSteps] = useState<ISteps>('ENTER_DETAILS')

  if (steps === 'ENTER_DETAILS') return <EnterDetails setSteps={setSteps} />
  if (steps === 'ENTER_OTP') return <EnterOTP setSteps={setSteps} />
  if (steps === 'SUCCESS') return <Success />
  return <EnterDetails setSteps={setSteps} />
}

function EnterDetails(props: { setSteps: React.Dispatch<React.SetStateAction<ISteps>> }) {
  const [email, setEmail] = useState<string>('')
  const handleSubmit = () => {
    props.setSteps('ENTER_OTP')
  }
  return (
    <Container>
      <Input
        label={`Email Address`}
        placeholder={`mobarter1@gmail.com`}
        value={email}
        onChange={(e) => {
          const num = e.target.value
          if (num.length > 11) {
            toast.error('11 characters max')
            return
          }
          setEmail(num.toString())
        }}
      />
      <Button onClick={handleSubmit} type="button">
        Send OTP
      </Button>
    </Container>
  )
}

function EnterOTP(props: { setSteps: React.Dispatch<React.SetStateAction<ISteps>> }) {
  const store = AppStores.useSettings()
  const [otp, setOTP] = useState<string>('')
  const handleSubmit = () => {
    props.setSteps('SUCCESS')
  }
  return (
    <Container>
      <Input
        label={`OTP Code`}
        placeholder={`eg: 123456`}
        preText={countryCode(store.countryIso)}
        value={otp}
        type="number"
        onChange={(e) => {
          const num = e.target.value
          if (num.length > 11) {
            toast.error('11 characters max')
            return
          }
          setOTP(num.toString())
        }}
        trailingIcon={
          <Copy
            className="text-muted"
            onClick={async () => {
              const text = await pasteTextFromClipboard()
              setOTP(text)
            }}
          />
        }
      />
      <Button onClick={handleSubmit} type="button">
        Verify OTP
      </Button>
    </Container>
  )
}

function Success() {
  const store = AppStores.useKyc()

  return (
    <Container>
      Success Lotiefile
      <Button
        type="button"
        onClick={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        Continue
      </Button>
    </Container>
  )
}
