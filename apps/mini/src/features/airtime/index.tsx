import { Country } from '@repo/api'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { Label } from 'src/components/comps'
import { logger } from 'src/lib/utils/logger'
import { pasteTextFromClipboard } from 'src/utils'

export default function Airtime() {
  const [phoneNo, setPhoneNo] = useState('')
  const Copy = FaCopy as any

  const handleSend = () => {
    toast.success('Sent')
  }
  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-5">
      <Label>Purchase Airtime</Label>
      <AppSelect
        label="Country"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={[
          { label: 'Nigeria', value: Country.Nigeria },
          { label: 'Ghana', value: Country.Ghana },
          { label: 'Kenya', value: Country.Kenya },
        ]}
      />
      <AppSelect
        label="Network"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={[
          { label: 'MTN', value: Country.Nigeria },
          { label: 'AIRTEL', value: Country.Ghana },
          { label: 'GLO', value: Country.Kenya },
        ]}
      />
      <Input
        label="Phone number"
        placeholder="2348101234567"
        value={phoneNo}
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

      <Input label="Amount" placeholder="Amount to send" type="number" />
      <Button className="mt-5" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}
