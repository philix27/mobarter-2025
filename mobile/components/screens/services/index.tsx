import { SafeAreaView, StyleSheet, Text } from "react-native";
import { servicesList } from "./data";
import RowService from "./Row";
import Wrapper from "@/components/Wrapper";

export default function ServicesScreen() {
  return (
    <Wrapper>
      {servicesList.map((val, i) => {
        return <RowService key={i} {...val} />;
      })}
    </Wrapper>
  );
}
