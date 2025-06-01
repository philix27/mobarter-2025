import { TView, Wrapper } from '@/components'
import { HeaderBar, useDrawer } from '@/components/layout'
import { useColor } from '@/lib'

export default function Page() {
  const drawer = useDrawer()
  const appColor = useColor()
  return (
    <>
      <Wrapper>
        <TView>Hey Guys, this is home page</TView>
      </Wrapper>
      {/* <MarketScreen /> */}
    </>
  )
}
