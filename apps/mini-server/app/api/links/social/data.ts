import { Assets } from "@/app/utils/Assets";
import { publicPath } from "@/app/publicPath";

export interface socialLinks {
  title: string;
  link: string;
  logo: string;
  desc?: string;
}

export const socialLinks: socialLinks[] = [
  {
    title: "Youtube",
    link: "https://www.youtube.com/@mobarter",
    logo: publicPath(Assets.socials.Youtube),
    desc: "",
  },
  {
    title: "Twitter",
    link: "https://x.com/mobarter_com",
    logo: publicPath(Assets.socials.Twitter),
    desc: "",
  },
  {
    title: "Telegram",
    link: "https://t.me/mobarter/1",
    logo: publicPath(Assets.socials.Telegram),
    desc: "",
  },
  {
    title: "LinkedIn",
    link: "https://www.linkedin.com/company/105072988/admin/dashboard/",
    logo: publicPath(Assets.socials.LinkedIn),
    desc: "",
  },
  {
    title: "Instagram",
    link: "https://www.instagram.com/mobarter.co/",
    logo: publicPath(Assets.socials.Instagram),
    desc: "",
  },
  {
    title: "Whatsapp",
    link: "",
    logo: publicPath(Assets.socials.Whatsapp),
    desc: "",
  },
  {
    title: "Facebook",
    link: "",
    logo: publicPath(Assets.socials.Facebook),
    desc: "",
  },
];
