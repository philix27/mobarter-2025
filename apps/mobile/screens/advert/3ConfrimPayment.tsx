import { TView, TText } from "@/components";
import InputButton from "@/components/forms/Button";
import { useColor } from "@/lib/color";
import { AppStores } from "@/lib";
import Toast from "react-native-toast-message";

export function ConfirmPaymentView() {
  const theme = useColor();
  const store = AppStores.useAdvert();
  return (
    <TView style={{ width: "100%", alignItems: "center" }}>
      <TView style={{ width: "80%" }}>
        <TText type="title" style={{ textAlign: "center" }}>
          Confirm the amount you received is NGN 50,000
        </TText>
      </TView>

      <TView
        style={{
          flexDirection: "row",
          gap: 20,
          alignItems: "center",
          justifyContent: "space-around",
        }}
      >
        <InputButton
          title="Confirm Payment Received"
          style={{ marginTop: 20 }}
          onPress={() => {
            Toast.show({
              text1: "Success",
              text2: "Order completed",
            });
            setTimeout(() => {
              store.clear();
            }, 3000);
          }}
        />
      </TView>
    </TView>
  );
}
