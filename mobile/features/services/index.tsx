import { servicesList } from './data'
import { Row, Wrapper } from '@/components'
import { router } from 'expo-router'
import { TView } from '@/components/ui/TView'
import { ReactNode } from 'react'
import { ViewStyle } from 'react-native'
import IconRound from '@/components/ui/IconRound'
import { useColor } from '@/hooks'
import SavingsScreen from '../savings'

export default function ServicesScreen() {
  const theme = useColor()
  return (
    <>
      <GridLayout>
        {servicesList.map((item, i) => (
          <GridLayout.Item key={i}>
            <IconRound
              {...item}
              onPress={() => {
                router.push(item.route as any)
              }}
            >
              {item.icon}
            </IconRound>
          </GridLayout.Item>
        ))}
      </GridLayout>

      <SavingsScreen />
      <TView style={{ marginVertical: 50 }} />
    </>
  )
}

function GridLayout(props: { children: ReactNode; style?: ViewStyle }) {
  return (
    <TView
      style={{
        width: '100%',
        flexDirection: 'row',
        flexWrap: 'wrap',
        justifyContent: 'space-between',
        display: 'flex',
        ...props.style,
      }}
    >
      {props.children}
    </TView>
  )
}

GridLayout.Item = (props: { children: ReactNode; style?: ViewStyle }) => {
  return (
    <TView
      style={{
        width: '29%',
        aspectRatio: 1,
        marginBottom: 10,
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius: 6,
        ...props.style,
      }}
    >
      {props.children}
    </TView>
  )
}
