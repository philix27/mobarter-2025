import Wrapper from '@/components/Wrapper';
import { SavingsCard } from './card';

export default function SavingsScreen() {
  return (
    <Wrapper>
      <SavingsCard
        title={'MoLock'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hrs'}
        onView={() => {}}
        onCreate={() => {}}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <SavingsCard
        title={'MoSave'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {}}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <SavingsCard
        title={'AutoSave'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {}}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
      <SavingsCard
        title={'AutoSend'}
        percentage={'Up to 10% APR'}
        balance={'$206,000'}
        amountAdded={'+ $0.04 in 24hr'}
        onView={() => {}}
        onCreate={() => {}}
        desc={'Lock up funds and Earn interest on a set period of time'}
      />
    </Wrapper>
  );
}
