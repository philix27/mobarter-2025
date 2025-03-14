import {
  AntDesign,
  Feather,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";

export const servicesList: {
  title: string;
  route: string;
  desc: string;
  bgColor?: string;
  icon: JSX.Element;
}[] = [
  {
    title: "Minisafe",
    desc: "Lock your safe",
    route: "/(core)/minisafe",
    icon: <MaterialCommunityIcons name="safe" size={24} color={"#fff"} />,
  },
  {
    title: "Purchase Airtime",
    desc: "Buy airtime with your crypto asset",
    route: "/(core)/purchase-airtime",
    icon: <AntDesign name="phone" size={24} color={"#ffffff"} />,
    bgColor: "#1f8c04",
  },
  {
    title: "Purchase Data",
    desc: "Buy data with your crypto asset",
    route: "/(core)/purchase-data",
    icon: <MaterialIcons name="browser-updated" size={24} color={"#fff"} />,
    bgColor: "#04818c",
  },
  {
    title: "Settle Utilities",
    desc: "Buy airtime with your crypto asset",
    route: "/(core)/purchase-utilities",
    icon: <Feather name="send" size={24} color={"#fff"} />,
    bgColor: "#8c045f",
  },
  {
    title: "Settings",
    desc: "Profile and KYC credentials",
    route: "/(core)/settings",
    icon: <Feather name="settings" size={24} color={"#fff"} />,
    bgColor: "#03c4b1",
  },
];
