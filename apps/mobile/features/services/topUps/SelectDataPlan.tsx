import { Row, TText, TView } from '@/components/ui'
import { ActivityIndicator, ViewStyle } from 'react-native'
import { BtmSheet } from '@/components/layout'
import { ErrMsg, InfoMsg, Label } from '@/components/forms'
import { useTopUps } from './zustand'
import { AppStores, useColor } from '@/lib'
import { Api, Country } from '@/graphql'
import { usePrice } from '@/hooks'
import { Ionicons } from '@expo/vector-icons'
import { useMemo } from 'react'

export function SelectDataPlan(params: {
  isDataBundle?: boolean
  style?: ViewStyle
  error?: string | undefined
  onValueChange?: (itemValue: string) => void
}) {
  const store = useTopUps()
  const _amount = params.isDataBundle ? store.dataBundle_amount : store.dataPlan_amount
  const _desc = params.isDataBundle ? store.dataBundle_desc : store.dataPlan_desc
  const _operatorId = params.isDataBundle ? store.dataBundles_operatorId : store.dataPlan_operatorId

  const { amountToPay } = usePrice(parseFloat(_amount))
  const refRBSheet = BtmSheet.useRef()
  const theme = useColor()
  const country = AppStores.useCountries().activeCountry

  const { data: topUpData, loading } = Api.useATopUpOperators({
    variables: { input: { countryCode: country?.isoName as Country } },
  })

  const getLabel = () => {
    if (_amount === undefined || _desc === undefined)
      return {
        label: 'Select Operator',
        value: undefined,
      }

    return {
      label: _amount,
      value: _desc,
    }
  }

  const getList = () => {
    if (!topUpData) return []

    const result = params.isDataBundle
      ? topUpData.utility_getTopUpOperators.dataBundles.filter((v) => v.name === store.operatorName)
      : topUpData.utility_getTopUpOperators.dataPlan.filter((v) => v.name === store.operatorName)

    // console.log('Result of Data bundles ' + store.operatorName, result)
    if (result.length === 0) return []

    if (!result[0].plans) return []

    return result[0].plans
  }

  const setOpsId = useMemo(() => {
    store.update({})
  }, [])

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
      <TText>{amountToPay}</TText>
      <BtmSheet.Modal ref={refRBSheet!}>
        <TView style={{ width: '100%' }}>
          {loading && <ActivityIndicator />}

          {getList().map((item, i) => (
            <Row
              key={i}
              title={`${country?.currencySymbol} ${item.amount}`}
              desc={item.desc}
              onClick={() => {
                if (params.isDataBundle) {
                  store.update({
                    dataBundle_amount: item.amount.toString(),
                    dataBundle_desc: item.desc,
                    // dataBundles_operatorId: item.amount
                  })
                } else {
                  store.update({
                    dataPlan_amount: item.amount.toString(),
                    dataPlan_desc: item.desc,
                  })
                }
              }}
            />
          ))}
        </TView>
      </BtmSheet.Modal>
    </>
  )
}
