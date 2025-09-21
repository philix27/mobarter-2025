import { HeaderBar } from '@/components/layout'
import SignIn from '@/features/signin'
import { useColor } from '@/hooks'
import { memo, ReactNode } from 'react'
import { View } from 'react-native'

export default function HomeScreen() {
  return (
    <Container>
      <HeaderBar title="" headerShown={false} />
      <SignIn />
    </Container>
  )
}

// eslint-disable-next-line react/display-name
const Container = memo((props: { children: ReactNode; title?: string; desc?: string }) => {
  const theme = useColor()
  return (
    <>
      {/* Background overlay */}
      <View
        style={{
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          position: 'absolute',
          // opacity: 0.95,
          backgroundColor: theme.background,
        }}
      />
      {/* Success content */}
      <View
        style={{
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          position: 'absolute',
          flex: 1,
          marginHorizontal: 10,
          marginVertical: 50,
        }}
      >
        <View
          style={{
            flex: 1,
            justifyContent: 'center',
            alignItems: 'center',
          }}
        >
          {props.children}
        </View>
      </View>
    </>
  )
})
