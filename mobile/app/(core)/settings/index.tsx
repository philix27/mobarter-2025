import HeaderBar from "@/components/Header";
import SettingsScreen from "@/screens/settings";

export default function Page() {
  return (
    <>
      <HeaderBar title="Settings" showBackBtn />
      <SettingsScreen />
    </>
  );
}
