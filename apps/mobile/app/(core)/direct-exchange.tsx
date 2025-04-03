import { TView } from "@/components";
import HeaderBar from "@/components/Header";
import { TText } from "@/components/TText";
import Wrapper from "@/components/Wrapper";

export default function Page() {
  return (
    <Wrapper>
      <HeaderBar title="Direct Exchange" showBackBtn />
      <TView>
        <TText>Direct Exchange</TText>
      </TView>
    </Wrapper>
  );
}
