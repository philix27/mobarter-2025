import Wrapper from "@/components/Wrapper";
import { useColor } from "@/lib/color";
import { AppStores } from "@/lib";
import { EnterAmount } from "./1EnterAmount";
import { ConfirmOrder } from "./2ConfrimOrder";
import { RateMerchant } from "./4RateMerchant";
import { CancelView } from "./Cancel";
import { AppealView } from "./Appeal";
import React from "react";
import { ConfirmPaymentView } from "./3ConfrimPayment";

export default function AdvertScreen() {
  const theme = useColor();
  const store = AppStores.useAdvert();
  return (
    <Wrapper>
      {
        <>
          {store.steps === "1EnterAmount" && <EnterAmount />}
          {store.steps === "2ConfirmOrderDetails" && <ConfirmOrder />}
          {store.steps === "3ConfirmPayment" && <ConfirmPaymentView />}
          {store.steps === "4RateMerchant" && <RateMerchant />}
          {store.steps === "Appeal" && <AppealView />}
          {store.steps === "Cancel" && <CancelView />}
        </>
      }
    </Wrapper>
  );
}
