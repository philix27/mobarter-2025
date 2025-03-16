import { servicesList } from "./data";
import Row from "../../Row";
import Wrapper from "@/components/Wrapper";
import { router } from "expo-router";

export default function ServicesScreen() {
  return (
    <Wrapper>
      {servicesList.map((val, i) => {
        return (
          <Row
            key={i}
            {...val}
            onClick={() => {
              router.push(val.route);
            }}
          />
        );
      })}
    </Wrapper>
  );
}
