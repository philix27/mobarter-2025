export interface ILinksLearn {
  title: string;
  url: string;
  category?: "BILL" | "STAKE" | "UTILITY" | "FARM" | "PAYMENTS";
  desc: string;
}

export const dataLinks: ILinksLearn[] = [
  {
    title: "How to recharge airtime",
    url: "https://youtube.com/shorts/7sLSbCcwYMY?feature=share",
    category: "BILL",
    desc: "",
  },
  {
    title: "How to recharge data plan",
    url: "https://youtube.com/shorts/7sLSbCcwYMY?feature=share",
    category: "BILL",
    desc: "",
  },
  {
    title: "How to pay electricity bill",
    url: "",
    category: "BILL",
    desc: "",
  },
  {
    title: "How to buy gift cards",
    url: "",
    category: "BILL",
    desc: "",
  },
  {
    title: "How to lock tokens",
    url: "",
    category: "STAKE",
    desc: "",
  },
  {
    title: "How to stake tokens",
    url: "",
    category: "STAKE",
    desc: "",
  },
  {
    title: "How to setup recurring payments",
    url: "",
    category: "PAYMENTS",
    desc: "",
  },
  {
    title: "How to stream funds",
    url: "",
    category: "PAYMENTS",
    desc: "",
  },
];
