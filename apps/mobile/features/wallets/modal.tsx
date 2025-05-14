import { TView } from "@/components";
import { LoadingIndicator } from "@/components/Loading";
import Row from "@/components/Row";
import { ApiHooks, ClipboardSet } from "@/lib";
import { useColor } from "@/lib/color";
import { Ionicons } from "@expo/vector-icons";
import React from "react";

export default function WalletModal() {
  const theme = useColor();
  return (
    <TView>
      <RemoteWallet />
      <TView style={{ height: 50 }} />
    </TView>
  );
}

function RemoteWallet() {
  const { data, loading } = ApiHooks.useGetWallets();
  if (loading) return <LoadingIndicator />;

  return (
    <>
      {data?.walletCrypto_getAll.map((val, i) => (
        <Row
          key={i}
          title={val.chainType}
          desc={shortenAddress(val.address)}
          icon={<Ionicons name="wallet-outline" size={20} color={"#fff"} />}
          onClick={async () => {
            await ClipboardSet(val.address);
          }}
        />
      ))}
    </>
  );
}

function shortenAddress(address: string, chars = 10): string {
  if (!address || address.length < chars * 2) {
    throw new Error("Invalid address");
  }
  return `${address.slice(0, chars)}...${address.slice(-chars)}`;
}
