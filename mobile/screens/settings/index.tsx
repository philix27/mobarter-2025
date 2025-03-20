import { Image } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import { AppAssets } from "@/assets";
import Wrapper from "@/components/Wrapper";
import Row from "@/components/Row";
import { ReactNode } from "react";
import { FontAwesome, Ionicons, MaterialIcons } from "@expo/vector-icons";
import { AppStores } from "@/lib/zustand";
import { Collapsible } from "@/components";
import { UserLevel } from "./UserLevel";
import InputButton from "@/components/forms/Button";

export default function SettingsScreen() {
  const appColor = useColor();
  const store = AppStores.useUserInfo();
  return (
    <Wrapper>
      <TView
        style={{
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          width: "100%",
          marginTop: 20,
          marginBottom: 30,
          gap: 8,
        }}
      >
        <Image
          source={AppAssets.logo.bitcoin}
          style={{ height: 80, width: 80, borderRadius: 50, marginBottom: 20 }}
        />
        {store.firstname && (
          <TText>
            {store.firstname} {store.lastname}
          </TText>
        )}

        <UserLevel />
      </TView>

      <Collapsible
        title={"Personal Info"}
        icon={
          <MaterialIcons
            name="verified-user"
            size={24}
            color={appColor.muted}
          />
        }
      >
        <InfoRow title="First name:" title2={store.firstname} />
        <InfoRow title="Last name:" title2={store.lastname} />
        <InfoRow title="Middle name:" title2={store.middlename!} />
        <InfoRow title="Email:" title2={store.email} />
        <InfoRow title="Country" title2={store.country!} />
        <InfoRow title="Phone" title2={""} />
      </Collapsible>
      <TView style={{ marginVertical: 2 }} />
      <Collapsible
        title={"KYC"}
        icon={
          <MaterialIcons
            name="verified-user"
            size={24}
            color={appColor.muted}
          />
        }
      >
        <InfoRow title="First name:" title2={store.firstname} />
        <InfoRow title="Last name:" title2={store.lastname} />
        <InfoRow title="Middle name:" title2={store.middlename!} />
        <InfoRow title="Email:" title2={store.email} />
        <InfoRow title="Country" title2={store.country!} />
        <InfoRow title="Phone" title2={""} />
      </Collapsible>
      <TView style={{ marginVertical: 2 }} />
      <Collapsible
        title={"Bank"}
        icon={<FontAwesome name="bank" size={24} color={appColor.muted} />}
      >
        <InfoRow title="Opay:" title2={"0123456789"} />
        <InfoRow title="GTB" title2={"0123456789"} />
        <InfoRow title="Zenith" title2={"0123456789"!} />
        <InputButton title="Add" />
      </Collapsible>

      <SectionTitle title={"Application"} />
      <Card>
        <Row
          title={"Currency"}
          desc={"Manage Bank Account Information"}
          icon={
            <MaterialIcons name="currency-exchange" size={24} color="#fff" />
          }
        />
        <Row
          title={"Support"}
          desc={"Contact customer support"}
          icon={<MaterialIcons name="support-agent" size={24} color="#fff" />}
        />
        <Row
          title={"Theme"}
          desc={"Manage appearance"}
          icon={
            <Ionicons name="color-palette-outline" size={24} color="#fff" />
          }
        />
      </Card>
      <SectionTitle title={"Others"} />
      <Card>
        <Row title={"Terms of Service"} desc={""} />
        <Row
          title={"Privacy Policy"}
          desc={""}
          icon={<MaterialIcons name="privacy-tip" size={24} color="#fff" />}
        />
        <Row
          title={"Logout"}
          desc={"Close app"}
          icon={<MaterialIcons name="logout" size={24} color="#fff" />}
        />
      </Card>
    </Wrapper>
  );
}

function SectionTitle(props: { title: string }) {
  return (
    <TView
      style={{
        width: "100%",
        marginLeft: 10,
        marginTop: 10,
      }}
    >
      <TText type="defaultSemiBold">{props.title}</TText>
    </TView>
  );
}
function InfoRow(props: { title: string; title2: string }) {
  return (
    <TView
      style={{
        flexDirection: "row",
        paddingHorizontal: 5,
        paddingVertical: 10,
        justifyContent: "space-between",
      }}
    >
      <TText type="defaultSemiBold">{props.title}</TText>
      <TText type="defaultSemiBold">{props.title2}</TText>
    </TView>
  );
}

function Card(props: { children: ReactNode }) {
  const appColor = useColor();
  return (
    <TView
      style={{
        width: "100%",
        borderRadius: 10,
        margin: 10,
        padding: 10,
        backgroundColor: appColor.card,
      }}
    >
      {props.children}
    </TView>
  );
}
