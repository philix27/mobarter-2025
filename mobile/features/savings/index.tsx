import { Wrapper } from '@/components/layout'
import { SavingsCard } from './card'
import { router } from 'expo-router'

export default function SavingsScreen() {
  return (
    <Wrapper>
      <SavingsCard
        title={'MoLock'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hrs'}
        onView={() => {}}
        onCreate={() => {
          router.push('/savings/locked')
        }}
        onPress={() => {}}
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
        title={'MoFixed'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {
          router.push('/savings/fixed')
        }}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <SavingsCard
        title={'AutoSave'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {
          router.push('/savings/locked')
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
    </Wrapper>
  )
}
