import { Row, TView } from '@/components/ui'
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
      (val) => val.operatorId === store.airtime_operatorId
    )[0]

    if (!active) {
      return {
        label: 'Select Operator',
        value: undefined,
        icon: '',
      }
    }

    return {
      label: active.name,
      value: active.operatorId,
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
                  const planOpsId = topUpData.utility_getTopUpOperators.dataPlan[0]?.operatorId
                  const bundleOpsId = topUpData.utility_getTopUpOperators.dataBundles[0]?.operatorId
                  store.update({
                    airtime_operatorId: item.operatorId,
                    operatorName: item.name,
                    dataPlan_amount: '',
                    dataPlan_desc: '',
                    dataBundle_desc: '',
                    dataBundle_amount: '',
                    dataPlan_operatorId: planOpsId || 0,
                    dataBundles_operatorId: bundleOpsId || 0,
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
