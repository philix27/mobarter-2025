import { useQuery } from '@tanstack/react-query'
import React, { useState } from 'react'

import BalCard from './BalCard'
import { Button } from '@/src/components/Button'
import Input from '@/src/components/Input'
import { AppSelect } from '@/src/components/Select'
import { Card, Label } from '@/src/components/comps'
import { usePrice } from '@/src/hooks/usePrice'
import { isDev, mapCountryToData } from '@/src/lib'
import { getElectricityBillers } from '@/src/lib/server'
import { formatCurrency } from '@/src/lib/utils'
import { AppStores } from '@/src/lib/zustand'

// IUtilityBillData
export default function ElectricityBill() {
  const store = AppStores.useSettings()
  const [amtValue, setAmountVal] = useState<number | undefined>(undefined)
  const [subscriberAccountNumber, setSubscriberAccountNumber] = useState<string | undefined>(
    undefined
  )
  const { amountToPay, handleOnChange } = usePrice()
  const [billerId, setBillerId] = useState<number>()
  const currSymbol = mapCountryToData[store.countryIso].currencySymbol
  const { data } = useQuery({
    queryKey: [`getElectricityBillers`],
    queryFn: async () => {
      const res = await getElectricityBillers(store.countryIso)
      return res
    },
  })

  const handleSend = async () => {
    const leastAmount = isDev ? 50 : 50
    leastAmount
    billerId
    subscriberAccountNumber
  }
  const getLimits = (limit?: 'UPPER') => {
    if (limit)
      return formatCurrency(
        data!.filter((val) => val.id === billerId)[0].maxInternationalTransactionAmount
      )
    return formatCurrency(
      data!.filter((val) => val.id === billerId)[0].minInternationalTransactionAmount
    )
  }
  return (
    <div className="w-full items-center justify-center flex flex-col gap-y-4 px-1">
      <BalCard />
      {data && (
        <AppSelect
          label="Biller Type*"
          onChange={(id) => {
            setBillerId(parseInt(id))
          }}
          data={data.map((val) => {
            return {
              label: `${val.name} ${val.serviceType}`,
              value: `${val.id}`,
            }
          })}
        />
      )}

      {billerId && (
        <Input
          label={`Amount (${mapCountryToData[store.countryIso].currencySymbol})*`}
          placeholder="Amount to send"
          type="number"
          step=".01"
          value={amtValue}
          onChange={(e) => {
            const str = e.target.value
            const num = parseFloat(str)
            if (str.length > 10) {
              return
            }
            if (isNaN(num)) {
              return
            }

            setAmountVal(num)
            handleOnChange(num)
          }}
        />
      )}
      {billerId && (
        <Input
          label={`(${mapCountryToData[store.countryIso].isoName}) Account Number*`}
          placeholder="Account No."
          type="number"
          step=".01"
          value={subscriberAccountNumber}
          onChange={(e) => {
            const num = e.target.value
            if (num.length > 10) {
              return
            }
            setSubscriberAccountNumber(num)
          }}
        />
      )}

      {data && billerId && (
        <div className="w-full ">
          <Label>Instructions</Label>
          <Card>
            Enter an amount between {currSymbol}
            {getLimits()}- {currSymbol}
            {getLimits('UPPER')}
          </Card>
        </div>
      )}

      <div className="w-full ">
        <Label>You Pay (cUSD)</Label>
        <Card>{amountToPay} </Card>
      </div>

      <Button className="mt-5 w-[70%]" onClick={handleSend}>
        Confirm
      </Button>
    </div>
  )
}
