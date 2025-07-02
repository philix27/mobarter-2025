import { AntDesign, Feather, FontAwesome, Fontisto, MaterialIcons } from '@expo/vector-icons'
import { JSX } from 'react'

export const servicesList: {
  title: string
  route: string
  desc: string
  icon: JSX.Element
}[] = [
  {
    title: 'Airtime',
    desc: 'Buy airtime with your crypto asset',
    route: '/services/airtime',
    icon: <AntDesign name="phone" size={24} color={'#ffffff'} />,
  },
  {
    title: 'Data Plans',
    desc: 'Buy airtime with your crypto asset',
    route: '/services/airtime',
    icon: <MaterialIcons name="network-check" size={24} color={'#ffffff'} />,
  },
  // {
  //   title: 'Data Plans',
  //   desc: 'Buy data with your crypto asset',
  //   route: '/services/data-plan',
  //   icon: <MaterialIcons name="browser-updated" size={24} color={'#fff'} />,
  // },
  // {
  //   title: 'Data Bundles',
  //   desc: 'Buy data with your crypto asset',
  //   route: '/services/bundles',
  //   icon: <MaterialIcons name="browser-updated" size={24} color={'#fff'} />,
  // },
  {
    title: 'Electricity',
    desc: 'Pay your light bills',
    route: '/services/electricity',
    icon: <FontAwesome name="lightbulb-o" size={24} color="#fff" />,
  },
  {
    title: 'TV',
    desc: 'Subscribe your Cable TVs (GoTv and DSTv)',
    route: '/services/tv',
    icon: <Fontisto name="tv" size={17} color="#fff" />,
  },
  {
    title: 'Betting',
    desc: 'Fund betting wallets',
    route: '/services/betting',
    icon: <FontAwesome name="soccer-ball-o" size={24} color="#fff" />,
  },
  {
    title: 'Gift cards',
    desc: 'Buy giftcards with your crypto asset',
    route: '/services/betting',
    icon: <MaterialIcons name="wallet-giftcard" size={24} color="#fff" />,
  },
  // {
  //   title: 'Schedule Payments',
  //   desc: 'Provide liquidity to Mobarter Swap',
  //   route: '/services/schedule-payments',
  //   icon: <Feather name="settings" size={24} color={'#fff'} />,
  // },
  // {
  //   title: 'Stream',
  //   desc: 'Provide liquidity to Mobarter Swap',
  //   route: '/services/cable-tv',
  //   icon: <Feather name="settings" size={24} color={'#fff'} />,
  //   bgColor: '#03c4b1',
  // },
]

// {
//   title: "Trade Analysis",
//   desc: "Provide liquidity to Mobarter Swap",
//   route: "/(core)/settings",
//   icon: <Feather name="settings" size={24} color={"#fff"} />,
//   bgColor: "#03c4b1",
// },
// {
//   title: "Integrate Mento Swap",
//   desc: "Provide liquidity to Mobarter Swap",
//   route: "/(core)/settings",
//   icon: <Feather name="settings" size={24} color={"#fff"} />,
//   bgColor: "#03c4b1",
// },
// {
//   title: "Provide Liquidity",
//   desc: "Provide liquidity to Mobarter Swap",
//   route: "/(core)/settings",
//   icon: <Feather name="settings" size={24} color={"#fff"} />,
//   bgColor: "#03c4b1",
// },
