import { Row, TView } from '@/components/ui'
import React, { useState } from 'react'
import { ActivityIndicator, ViewStyle } from 'react-native'
import { BtmSheet } from '@/components/layout'
import { ErrMsg, InfoMsg, Label } from '@/components/forms'
import { useTopUps } from './zustand'
import { AppStores, useColor } from '@/lib'
import { Api, Country } from '@/graphql'
import { usePrice } from '@/hooks'
import { Ionicons } from '@expo/vector-icons'

export function SelectDataPlan(params: {
  style?: ViewStyle
  error?: string | undefined
  onValueChange?: (itemValue: string) => void
}) {
  const store = useTopUps()
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()
  const refRBSheet = BtmSheet.useRef()
  const theme = useColor()
  const countryStore = AppStores.useCountries()

  const { data: topUpData, loading } = Api.useATopUpOperators({
    variables: { input: { countryCode: countryStore.activeIso as Country } },
  })

  const getLabel = () => {
    if (store.dataPlan_amount === undefined || store.dataPlan_desc === undefined)
      return {
        label: 'Select Operator',
        value: undefined,
      }

    return {
      label: store.dataPlan_amount,
      value: store.dataPlan_desc,
    }
  }

  const getList = () => {
    if (!topUpData) return []

    const result = topUpData.utility_getTopUpOperators.dataBundles.filter(
      (v) => v.name === store.operatorName
    )

    // console.log('Result of Data bundles ' + store.operatorName, result)
    if (result.length === 0) return []

    if (!result[0].plans) return []

    return result[0].plans
  }
  return (
    <>
      <TView style={{ width: '100%' }}>
        <Label label="Plan" />
        <Row
          title={getLabel().label}
          desc={getLabel().value}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            refRBSheet.current!.open()
          }}
        />
        {params.error && <ErrMsg msg={params.error} />}
        {amountToPay && <InfoMsg msg={amountToPay.toString()} />}
      </TView>
      <BtmSheet.Modal ref={refRBSheet!}>
        <TView style={{ width: '100%' }}>
          {loading && <ActivityIndicator />}

          {getList().map((item, i) => (
            <Row
              key={i}
              title={`$${item.amount}`}
              desc={item.desc}
              onClick={() => {
                handlePriceChange(item.amount)
                store.update({
                  dataPlan_amount: item.amount.toString(),
                  dataPlan_desc: item.desc,
                })
              }}
            />
          ))}
        </TView>
      </BtmSheet.Modal>
    </>
  )
}
