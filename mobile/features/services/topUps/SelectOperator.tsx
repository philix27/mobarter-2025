import { Row, TView } from '@/components/ui'
import React, { useState } from 'react'
import { ActivityIndicator, ViewStyle } from 'react-native'
import { BtmSheet } from '@/components/layout'
import { ErrMsg, Label } from '@/components/forms'
import { useTopUps } from './zustand'
import { AppStores, useColor } from '@/lib'
import { Api, Country } from '@/graphql'
import { Ionicons } from '@expo/vector-icons'

export function SelectOperator(params: {
  style?: ViewStyle
  error?: string | undefined
  onValueChange?: (itemValue: string) => void
}) {
  const store = useTopUps()
  const theme = useColor()
  const refRBSheet = BtmSheet.useRef()
  const countryStore = AppStores.useCountries()

  const { data: topUpData, loading } = Api.useATopUpOperators({
    variables: { input: { countryCode: countryStore.activeIso as Country } },
  })

  const getLabel = () => {
    if (!store.operatorName || !topUpData)
      return {
        label: 'Select Operator',
        value: undefined,
        icon: '',
      }

    const active = topUpData?.utility_getTopUpOperators.airtime.filter(
      (val, i) => val.name === store.operatorName
    )[0]

    return {
      label: active.name,
      value: active.name,
      icon: active.logo,
    }
  }

  return (
    <>
      <TView style={{ width: '100%' }}>
        <Label label="Network Operator" />
        <Row
          title={getLabel().label}
          desc="Network operator"
          imgUrl={getLabel().icon}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            refRBSheet.current!.open()
          }}
        />
        {params.error && <ErrMsg msg={params.error} />}
      </TView>
      <BtmSheet.Modal ref={refRBSheet!}>
        <TView style={{ width: '100%' }}>
          {loading ? (
            <ActivityIndicator />
          ) : (
            topUpData &&
            topUpData.utility_getTopUpOperators.airtime.map((item, i) => (
              <Row
                key={i}
                title={item.name}
                imgUrl={item.logo}
                desc="Operator"
                onClick={() => {
                  store.update({
                    operatorName: item.name,
                    dataPlan_amount: '',
                    dataPlan_desc: '',
                    dataPlan_operatorId: '',
                  })
                  if (params.onValueChange) {
                    params.onValueChange(item.name)
                  }
                }}
              />
            ))
          )}
        </TView>
      </BtmSheet.Modal>
    </>
  )
}
