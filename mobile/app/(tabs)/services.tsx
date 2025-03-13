import HeaderBar from "@/components/Header";
import ServicesScreen from "@/components/screens/services";

export default function HomeScreen() {
  return (
    <>
      <HeaderBar title="Services" hideBack />
      <ServicesScreen />
    </>
  );
}
