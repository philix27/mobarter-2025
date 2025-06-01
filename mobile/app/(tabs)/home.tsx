import { TView, Wrapper } from '@/components'
import { HeaderBar, useDrawer } from '@/components/layout'
import MarketScreen from '@/features/market'
import { useColor } from '@/lib'
import { Feather } from '@expo/vector-icons'
import { TouchableOpacity } from 'react-native'

export default function Page() {
  const drawer = useDrawer()
  const appColor = useColor()
  return (
    <>
      {/* <HeaderBar
        title="Wallet"
        headerLeft={(props: any) => {
          return (
            <TouchableOpacity style={{ marginLeft: 20, flexDirection: 'row', columnGap: 20 }}>
              <Feather
                name="menu"
                size={24}
                color={appColor.text}
                onPress={() => {
                  drawer.open()
                }}
              />
            </TouchableOpacity>
          )
        }}
      /> */}
      <Wrapper>
        <TView>Hey Guys, this is home page</TView>
      </Wrapper>
      {/* <MarketScreen /> */}
    </>
  )
}
