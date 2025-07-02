import { BtmSheet, Wrapper } from '@/components/layout'
import { SavingsCard } from './card'
import { router } from 'expo-router'
import ViewFixedDeposit from './fixed/View'

export default function SavingsScreen() {
  const modalRef = BtmSheet.useRef()
  return (
    <>
      <SavingsCard
        title={'MoLock'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {
          modalRef.current.open()
        }}
        onCreate={() => {
          router.push('/savings/locked')
        }}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <SavingsCard
        title={'MoSave'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {
          router.push('/savings/flexible')
        }}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />

      <SavingsCard
        title={'AutoSend'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {
          router.push('/savings/locked')
        }}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <BtmSheet.Modal
        ref={modalRef!}
        style={{
          alignItems: 'center',
          flexDirection: 'column',
          paddingBottom: 80,
          width: '100%',
          rowGap: 1,
        }}
      >
        <ViewFixedDeposit />
      </BtmSheet.Modal>
    </>
  )
}
