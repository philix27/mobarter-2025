import { servicesList } from "./data";
import Wrapper from "@/components/Wrapper";
import { router } from "expo-router";

import { FlatList } from "react-native";
import { TView } from "@/components/TView";
import Row from "@/components/Row";

export default function ServicesScreen() {
  return (
    <Wrapper>
      <FlatList
        style={{ width: "100%" }}
        data={servicesList}
        renderItem={({ item }) => (
          <Row
            {...item}
            onClick={() => {
              router.push(item.route as any);
            }}
          />
        )}
      />
      <TView style={{ marginVertical: 100 }} />
    </Wrapper>
  );
}
