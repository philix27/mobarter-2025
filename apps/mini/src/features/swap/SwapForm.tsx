import { Form, Formik } from 'formik'
import { SubmitButton } from 'src/components/SubmitButton'
import { TokenId } from 'src/lib/config/tokens'
import { debounce } from 'src/lib/utils/debounce'
import { AppStores } from 'src/lib/zustand'
import { useAccount } from 'wagmi'

import { SwapFormInputs } from './SwapFormInputs'
// import { SlippageRow } from './comps/SlippageRow'
import { useFormValidator } from './hooks/useFormValidator'
import { SwapFormValues } from './types'

const initialValues: SwapFormValues = {
  fromTokenId: TokenId.CELO,
  toTokenId: TokenId.cUSD,
  amount: '',
  quote: '',
  direction: 'in',
  slippage: '1.0',
}

export function SwapForm() {
  const store = AppStores.useSwap()
  const { address, isConnected } = useAccount()

  const isWalletConnected = address && isConnected
  const isBalanceLoaded = store.account_balances && Boolean(store.account_lastUpdated)

  const onSubmit = (values: SwapFormValues) => {
    store.update({ swap_formValues: values })
    store.update({ swap_confirmView: true })
  }
  const validateForm = useFormValidator({
    balances: store.account_balances,
    isBalanceLoaded,
    isWalletConnected,
  })
  const debouncedValidateForm = debounce(async (values) => validateForm(values), 100)
  const storedFormValues = store.swap_formValues
  const initialFormValues = storedFormValues || initialValues

  return (
    <Formik
      initialValues={initialFormValues}
      onSubmit={onSubmit}
      validate={debouncedValidateForm}
      validateOnChange={true}
      validateOnBlur={false}
    >
      <Form className="w-full">
        <SwapFormInputs balances={store.account_balances} />
        <div className="flex justify-center w-full my-6 mb-0">
          <SubmitButton
            isWalletConnected={isWalletConnected}
            isBalanceLoaded={isBalanceLoaded}
            type="submit"
          >
            SubmitButton
          </SubmitButton>
        </div>
      </Form>
    </Formik>
  )
}
