import { TText } from '@/components/TText';
import { TView } from '@/components/TView';
import { useColor } from '@/lib/color';

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

export default function SettingsScreen() {
  const appColor = useColor();
  const store = AppStores.useUserInfo();
  const { toggleTheme } = useContext(ThemeContext);
  return (
    <Wrapper>
      <TView
        style={{
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
          width: '100%',
          marginTop: 20,
          marginBottom: 30,
          gap: 8,
        }}
      >
        {/* <Image
          source={AppAssets.logo.bitcoin}
          style={{ height: 80, width: 80, borderRadius: 50, marginBottom: 20 }}
        /> */}
        {store.firstname && (
          <TText>
            {store.firstname} {store.lastname}
          </TText>
        )}

        {/* <UserLevel /> */}
      </TView>

      <Collapsible title={'Personal Info'}>
        <InfoRow title="First name:" title2={store.firstname} />
        <InfoRow title="Last name:" title2={store.lastname} />
        <InfoRow title="Middle name:" title2={store.middlename!} />
        <InfoRow title="Email:" title2={store.email} />
        {/* <InfoRow title="Country" title2={store.country!} /> */}
        <InfoRow title="Phone" title2={''} />
        <InputButton title="Manage" />
      </Collapsible>
      <TView style={{ marginVertical: 2 }} />
      <Collapsible title={'KYC'}>
        <InfoRow title="First name:" title2={store.firstname} />
        <InfoRow title="Last name:" title2={store.lastname} />
        <InfoRow title="Middle name:" title2={store.middlename!} />
        <InfoRow title="Email:" title2={store.email} />
        {/* <InfoRow title="Country" title2={store.country!} /> */}
        <InfoRow title="Phone" title2={''} />
        <InputButton title="Manage" />
      </Collapsible>
      <TView style={{ marginVertical: 2 }} />
      <Collapsible title={'Bank'}>
        <InfoRow title="Opay:" title2={'0123456789'} />
        <InfoRow title="GTB" title2={'0123456789'} />
        <InfoRow title="Zenith" title2={'0123456789'!} />
        <InputButton title="Manage" />
      </Collapsible>

      <SectionTitle title={'Application'} />
      <Card>
        <Row
          title={'Currency'}
          desc={'Manage Bank Account Information'}
          icon={
            <MaterialIcons name="currency-exchange" size={24} color="#fff" />
          }
        />
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
      </Card>
      <Socials />
      <Docs />
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
