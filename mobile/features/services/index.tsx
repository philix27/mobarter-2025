import { servicesList } from './data'
import { Row, Wrapper } from '@/components'
import { router } from 'expo-router'
import { TView } from '@/components/ui/TView'

export default function ServicesScreen() {
  return (
    <Wrapper>
      {servicesList.map((item, i) => (
        <Row
          {...item}
          onClick={() => {
            router.push(item.route as any)
          }}
        />
      ))}
      <TView style={{ marginVertical: 100 }} />
    </Wrapper>
  )
}
