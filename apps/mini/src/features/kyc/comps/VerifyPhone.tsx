import React, { useState } from 'react'
import { toast } from 'sonner'

import { Button } from '@/src/components/Button'
import Input from '@/src/components/Input'
import { countryCode, mapCountryToIso } from '@/src/lib'
import { AppStores } from '@/src/lib/zustand'

type ISteps = 'ENTER_DETAILS' | 'ENTER_OTP' | 'SUCCESS'
export default function VerifyPhone() {
  const [steps, setSteps] = useState<ISteps>('ENTER_DETAILS')

  if (steps === 'ENTER_DETAILS') return <EnterDetails setSteps={setSteps} />
  if (steps === 'ENTER_OTP') return <EnterOTP setSteps={setSteps} />
  if (steps === 'SUCCESS') return <Success />
  return <EnterDetails setSteps={setSteps} />
}

function EnterDetails(props: { setSteps: React.Dispatch<React.SetStateAction<ISteps>> }) {
  const store = AppStores.useSettings()
  const [phoneNo, setPhoneNo] = useState<string>('')
  const handleSubmit = () => {
    props.setSteps('ENTER_OTP')
  }
  return (
    <div className="w-full flex flex-col items-center">
      <Input
        label={`${mapCountryToIso[store.countryIso]} Phone number`}
        placeholder={`8101234567`}
        preText={countryCode(store.countryIso)}
        value={phoneNo}
        type="number"
        onChange={(e) => {
          const num = e.target.value
          if (num.length > 11) {
            toast.error('11 characters max')
            return
          }
          setPhoneNo(num.toString())
        }}
      />
      <Button onClick={handleSubmit} type="button">
        Send OTP
      </Button>
    </div>
  )
}

function EnterOTP(props: { setSteps: React.Dispatch<React.SetStateAction<ISteps>> }) {
  const [otp, setOTP] = useState<string>('')
  const handleSubmit = () => {
    props.setSteps('SUCCESS')
  }
  return (
    <div className="w-full flex flex-col items-center">
      <Input
        label={`OTP Code`}
        placeholder={`eg: 123456`}
        value={otp}
        type="number"
        onChange={(e) => {
          const num = e.target.value
          if (num.length > 7) {
            toast.error('7 characters max')
            return
          }
          setOTP(num.toString())
        }}
      />
      <Button onClick={handleSubmit} type="button">
        Verify OTP
      </Button>
    </div>
  )
}

function Success() {
  const store = AppStores.useKyc()

  return (
    <div className="w-full flex flex-col items-center">
      Success Lotiefile
      <Button
        type="button"
        onClick={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        Continue
      </Button>
    </div>
  )
}
