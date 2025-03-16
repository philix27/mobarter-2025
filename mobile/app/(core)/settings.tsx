import { Image } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import HeaderBar from "@/components/Header";
import { AppAssets } from "@/assets";
import Wrapper from "@/components/Wrapper";
import Row from "@/components/Row";
import { ReactNode } from "react";
import {
  Feather,
  Ionicons,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";

export default function SettingsScreen() {
  const appColor = useColor();
  return (
    <Wrapper>
      <HeaderBar title="Settings" />
      <TView
        style={{
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          width: "100%",
          marginTop: 40,
          marginBottom: 30,
          gap: 8,
        }}
      >
        <Image
          source={AppAssets.logo.bitcoin}
          style={{ height: 80, width: 80, borderRadius: 50, marginBottom: 20 }}
        />
        <TText type="subtitle">John Doe</TText>
        <UserLevel />
      </TView>

      <SectionTitle title={"Personal"} />
      <Card>
        <Row
          title={"KYC"}
          desc={"Credentials Verification"}
          icon={<MaterialIcons name="verified-user" size={24} color="#fff" />}
        />
        <Row title={"KYC"} desc={"Credentials"} />
      </Card>
      <SectionTitle title={"Application"} />
      <Card>
        <Row
          title={"Banks"}
          desc={"Manage Bank Account Information"}
          icon={<MaterialCommunityIcons name="bank" size={24} color="#fff" />}
        />
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

function UserLevel() {
  const appColor = useColor();
  return (
    <TView
      style={{
        backgroundColor: appColor.primary,
        paddingHorizontal: 15,
        paddingVertical: 6,
        borderRadius: 10,
        marginTop: 10,
      }}
    >
      <TText>Level 3</TText>
    </TView>
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
