import {  Copy } from 'lucide-react'
import React, { useState } from 'react'
import { toast } from 'sonner'

import { Button } from '@/src/components/Button'
import Input from '@/src/components/Input'
import { countryCode, mapCountryToIso } from '@/src/lib'
import { pasteTextFromClipboard } from '@/src/lib/utils'
import { AppStores } from '@/src/lib/zustand'
import Container from './Container'

export default function VerifyBvn() {
  const store = AppStores.useSettings()
  const [phoneNo, setPhoneNo] = useState<string>('')
  return (
    <Container>
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
        trailingIcon={
          <Copy
            className="text-muted"
            onClick={async () => {
              const text = await pasteTextFromClipboard()
              setPhoneNo(text)
            }}
          />
        }
      />
      <Button>Send OTP</Button>
    </Container>
  )
}
