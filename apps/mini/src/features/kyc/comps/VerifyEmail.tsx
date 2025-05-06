import React, { useState } from 'react'

import { Button } from '@/src/components/Button'
import Input from '@/src/components/Input'

export default function VerifyEmail() {
  const [phoneNo, setPhoneNo] = useState<string>('')
  return (
    <div className="w-full">
      <Input
        label={`Email address`}
        placeholder={`mobarter@gmail.com`}
        value={phoneNo}
        onChange={(e) => {
          const num = e.target.value

          setPhoneNo(num.toString())
        }}
      />
      <Button>Send OTP</Button>
    </div>
  )
}
