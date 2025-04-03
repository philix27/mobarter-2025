import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import HeaderBar from "@/components/Header";
import { useColor } from "@/lib/color";
import { TouchableOpacity } from "react-native";
import { FontAwesome6 } from "@expo/vector-icons";
import { router } from "expo-router";
import Wrapper from "@/components/Wrapper";
import { HeaderTabs } from "@/components/BHeaderTab";
import { useState } from "react";

const ads: { title: string }[] = [
  { title: "Ads 1" },
  { title: "Ads 1" },
  { title: "Ads 1" },
  { title: "Ads 1" },
  { title: "Ads 1" },
  { title: "Ads 1" },
];
export default function Page() {
  const theme = useColor();
  const [tab, setTab] = useState<"Open" | "Close">("Open");
  return (
    <>
      <HeaderBar
        title="Manage Adverts"
        showBackBtn
        backTo="Home"
        headerRight={(props) => {
          return (
            <TouchableOpacity
              style={{ marginRight: 20, flexDirection: "row", columnGap: 20 }}
              onPress={() => {
                console.log("Create Clicked");
                router.push("/(core)/advert/create");
              }}
            >
              <FontAwesome6 name="add" size={24} color={theme.text} />
            </TouchableOpacity>
          );
        }}
      />
      <Wrapper>
        <HeaderTabs
          data={[
            {
              title: "Open",
              key: "Open",
              isActive: tab === "Open",
              onPress: () => {
                setTab("Open");
              },
            },
            {
              title: "Close",
              key: "Close",
              isActive: tab === "Close",
              onPress: () => {
                setTab("Close");
              },
            },
          ]}
          tintColor=""
          children=""
          style={{ width: 300, marginTop: 0, marginBottom: 10 }}
        />
        <TView style={{ width: "100%" }}>
          {ads.map((val, i) => (
            <TView
              key={i}
              style={{
                backgroundColor: theme.accent,
                marginBottom: 5,
                padding: 10,
              }}
            >
              <TText>{val.title}</TText>
            </TView>
          ))}
        </TView>
      </Wrapper>
    </>
  );
}
