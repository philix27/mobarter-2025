import { Country } from '@repo/api'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { pasteTextFromClipboard } from 'src/lib/utils'
import { logger } from 'src/lib/utils/logger'

export default function Airtime() {
  const [amtValue, setAmountVal] = useState<number>()
  const [phoneNo, setPhoneNo] = useState<string>('')
  const Copy = FaCopy as any

  const handleSend = () => {
    if (amtValue == undefined || amtValue < 1000) {
      toast.error('Minimum of NGN1,000')
    }
  }
  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20vh]">
      {/* <Label>Purchase Airtime</Label> */}
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
        type="number"
        pattern="[0-9]*"
        inputMode="decimal"
        min={0}
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

      <Input
        label="Amount"
        placeholder="Amount to send"
        type="number"
        pattern="[0-9]*"
        inputMode="decimal"
        step=".01"
        min={0}
        value={amtValue}
        onChange={(e) => {
          const num = parseFloat(e.target.value)
          if (isNaN(num)) {
            return
          }
          console.log(num)
          // if (parseInt(e.target.value) < 0) {
          //   return
          // }
          setAmountVal(num)
        }}
      />

      <Button className="mt-5 w-[70%]" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}
