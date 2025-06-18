import { BtmSheet } from '@/components/layout'
import { InputButton } from '@/components/forms'
import { AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { toast, TView } from '@/components/ui'
import { useTopUps } from './zustand'
import { SelectDataPlan } from './SelectDataPlan'
import { Api, Country } from '@/graphql'
import { useResponse } from '@/lib/providers'
import AppHooks from '@/hooks'

export default function DataBundlesComp(params: { isDataBundle?: boolean }) {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = AppHooks.useTransferToken()
  const tokenStore = AppStores.useTokens()
  const store = useTopUps()
  const [mutate] = Api.usePurchaseDataBundle()
  const country = AppStores.useCountries().activeCountry
  const { amountToPay } = usePrice(store.dataBundle_amount)
  const response = useResponse()
  const _amount = params.isDataBundle ? store.dataBundle_amount : store.dataPlan_amount
  const _operatorId = params.isDataBundle ? store.dataBundles_operatorId : store.dataPlan_operatorId

  const handleSubmit = () => {
    if (!store.operatorName || _operatorId === 0) {
      toast.error('Please select an operator')
      return
    }
    if (_amount === '') {
      toast.error('Please select a plan')
      return
    }
    if (store.phone.length !== 10) {
      toast.error('Please enter a valid phone number')
      return
    }

    if (amountToPay == 0) {
      toast.error('Cannot pay 0')
      return
    }

    confirmModal.current.open()
  }

  const onPay = () => {
    transferERC20({
      recipient: '',
      amount: amountToPay!.toString(),
      token: '',
    })

    response.showLoading(true)
    confirmModal.current.close()
    transferERC20({
      recipient: '',
      amount: amountToPay!.toString(),
      token: '',
    })
      .then(async (hash: string) => {
        await mutate({
          variables: {
            input: {
              amount: parseFloat(_amount),
              countryCode: country?.isoName as Country,
              operatorId: _operatorId,
              phoneNo: store.phone,
              transaction_hash: hash,
              // todo: use transaction hash
              // transaction_hash: Date.now().toString(),
            },
          },
        })
          .then(() => {
            response.showSuccess('Transaction Successful')
          })
          .catch((e) => {
            response.showError('Transaction Failed')
            console.log('Error: ', e)
          })
      })
      .catch(() => {
        response.showError('Transaction Failed')
      })
  }
  return (
    <>
      <SelectDataPlan isDataBundle={params.isDataBundle} />
      <InputButton title={'Submit'} onPress={handleSubmit} />
      <BtmSheet.Modal title="Confirm" ref={confirmModal!}>
        <BtmSheet.Row text1="Operator" text2={store.operatorName} />
        <BtmSheet.Row text1="Phone" text2={`${country?.callingCodes}${store.phone}`} />
        <BtmSheet.Row text1="Amount" text2={`${country?.currencySymbol}${_amount.toString()}`} />
        <BtmSheet.Row text1="You pay" text2={`${amountToPay} ${tokenStore.activeToken?.symbol}`} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Pay'} onPress={onPay} />
      </BtmSheet.Modal>
    </>
  )
}
