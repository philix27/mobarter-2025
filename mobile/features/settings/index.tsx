import { TText } from '@/components/TText';
import { TView } from '@/components/TView';

import Wrapper from '@/components/Wrapper';
import Row from '@/components/Row';
import { useContext } from 'react';
import { FontAwesome5, Ionicons, MaterialIcons } from '@expo/vector-icons';
import { AppStores } from '@/lib/zustand';
import { Collapsible } from '@/components';
import InputButton from '@/components/forms/Button';
import { router } from 'expo-router';
import { ThemeContext } from '@/lib/providers';
import { Card, InfoRow, SectionTitle } from './Card';
import Socials from './Socials';
import Docs from './Docs';
import SelectCountry from './SelectCountry';
import SelectPaymentToken from './SelectPaymentToken';
import Personal from './Personal';
import { useColor } from '@/lib/color';

export default function SettingsScreen() {
  const color = useColor();
  const store = AppStores.useUserInfo();
  const { toggleTheme } = useContext(ThemeContext);
  let activeSections: [] = [];

  // const _updateSections = activeSections => {
  //   this.setState({ activeSections });
  // };

  return (
    <Wrapper>
      <TView
        style={{
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
          // width: '100%',
          marginTop: 20,
          marginBottom: 30,
          gap: 8,
          backgroundColor: color.background,
        }}
      >
        {store.firstname && (
          <TText>
            {store.firstname} {store.lastname}
          </TText>
        )}

        {/* <UserLevel /> */}
      </TView>
      {/* <CollapsibleRN collapsed={true}>
        <Socials />
      </CollapsibleRN> */}

      <Collapsible title={'Personal Info'}>
        <Personal />
      </Collapsible>
      <Collapsible title={'KYC'}>
        <Personal />
      </Collapsible>
      <Collapsible title={'Bank'}>
        <InfoRow title="Opay:" title2={'0123456789'} />
        <InfoRow title="GTB" title2={'0123456789'} />
        <InfoRow title="Zenith" title2={'0123456789'!} />
        <InputButton title="Manage" />
      </Collapsible>

      <Collapsible title={'Application'}>
        <SelectCountry />
        <SelectPaymentToken />
        <Row
          title={'Support'}
          desc={'Contact customer support'}
          icon={<MaterialIcons name="support-agent" size={24} color="#fff" />}
        />
        <Row
          title={'Theme'}
          desc={'Manage appearance'}
          icon={
            <Ionicons name="color-palette-outline" size={24} color="#fff" />
          }
          onClick={() => {
            toggleTheme();
          }}
        />
      </Collapsible>

      <Collapsible title={'Socials'}>
        <Socials />
      </Collapsible>
      <Collapsible title={'Links'}>
        <Docs />
      </Collapsible>

      <SectionTitle title={'Others'} />
      <Card>
        <Row
          title={'Learn'}
          desc={'Tutorials and Guide on Mobarter'}
          icon={<FontAwesome5 name="readme" size={20} color="#fff" />}
          onClick={() => {
            router.push('/learn');
          }}
        />
        <Row
          title={'Logout'}
          desc={'Close app'}
          icon={<MaterialIcons name="logout" size={24} color="#fff" />}
          onClick={() => {
            store.clear();
            router.push('/');
          }}
        />
      </Card>
    </Wrapper>
  );
}
