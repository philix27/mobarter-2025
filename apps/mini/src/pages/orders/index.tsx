import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import AppealOrders from 'src/features/orders/Appeal'
import CanceledOrders from 'src/features/orders/Canceled'
import CompletedOrders from 'src/features/orders/Completed'
import PendingOrders from 'src/features/orders/Pending'
import { AppStores } from 'src/lib/zustand'

export default function Page() {
  const store = AppStores.useOrder()
  return (
    <Wrapper>
      <div className="w-full">
        <Tab
          data={[
            {
              title: 'PENDING',
              isActive: store.tabs === 'PENDING',
              onClick: () => {
                store.update({
                  tabs: 'PENDING',
                })
              },
            },
            {
              title: 'COMPLETED',
              isActive: store.tabs === 'COMPLETED',
              onClick: () => {
                store.update({
                  tabs: 'COMPLETED',
                })
              },
            },
            {
              title: 'APPEAL',
              isActive: store.tabs === 'APPEAL',
              onClick: () => {
                store.update({
                  tabs: 'APPEAL',
                })
              },
            },
            {
              title: 'CANCELED',
              isActive: store.tabs === 'CANCELED',
              onClick: () => {
                store.update({
                  tabs: 'CANCELED',
                })
              },
            },
          ]}
        />
      </div>
      <View />
    </Wrapper>
  )
}

function View() {
  const store = AppStores.useOrder()
  switch (store.tabs) {
    case 'COMPLETED':
      return <CompletedOrders />
    case 'PENDING':
      return <PendingOrders />
    case 'APPEAL':
      return <AppealOrders />
    case 'CANCELED':
      return <CanceledOrders />
    default:
      return <CompletedOrders />
  }
}
