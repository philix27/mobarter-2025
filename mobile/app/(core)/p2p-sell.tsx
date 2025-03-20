import { TView } from "@/components";
import HeaderBar from "@/components/Header";
import { TText } from "@/components/TText";
import Wrapper from "@/components/Wrapper";

export default function Page() {
  return (
    <Wrapper>
      <HeaderBar title="P2P - Sell" showBackBtn />
      <TView>
        <TText>P2P</TText>
      </TView>
    </Wrapper>
  );
}
