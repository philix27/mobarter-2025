// import { MetaMaskInpageProvider } from "@metamask/providers";
declare type Address = string
declare type window = any
declare type window = any

declare global {
  interface window{
      // ethereum?:MetaMaskInpageProvider
       ethereum: any
  }
}