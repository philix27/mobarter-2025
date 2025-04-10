import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import AppealOrders from 'src/features/orders/Appeal'
import CanceledOrders from 'src/features/orders/Canceled'
import CompletedOrders from 'src/features/orders/Completed'
import PendingOrders from 'src/features/orders/Pending'
import { AppStores } from 'src/lib/zustand'

export default function Page() {
  const store = AppStores.useSettings()
  return (
    <Wrapper>
      <div className="w-full flex flex-col items-center justify-center">
        <Tab
          data={[
            {
              title: 'PENDING',
              isActive: store.ordersTab === 'PENDING',
              onClick: () => {
                store.update({
                  ordersTab: 'PENDING',
                })
              },
            },
            {
              title: 'COMPLETED',
              isActive: store.ordersTab === 'COMPLETED',
              onClick: () => {
                store.update({
                  ordersTab: 'COMPLETED',
                })
              },
            },
            {
              title: 'APPEAL',
              isActive: store.ordersTab === 'APPEAL',
              onClick: () => {
                store.update({
                  ordersTab: 'APPEAL',
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
  const store = AppStores.useSettings()
  switch (store.ordersTab) {
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
