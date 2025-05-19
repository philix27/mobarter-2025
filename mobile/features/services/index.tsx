import { servicesList } from './data';
import Wrapper from '@/components/Wrapper';
import { router } from 'expo-router';
import { TView } from '@/components/TView';
import Row from '@/components/Row';

export default function ServicesScreen() {
  return (
    <Wrapper>
      {servicesList.map((item, i) => (
        <Row
          {...item}
          onClick={() => {
            router.push(item.route as any);
          }}
        />
      ))}
      <TView style={{ marginVertical: 100 }} />
    </Wrapper>
  );
}
