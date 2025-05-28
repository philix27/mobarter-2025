import { IToken } from '@/api'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  steps?: 'WELCOME' | 'SET_PASSWORD' | 'SAVE_WALLET' | 'CONGRATS'
  walletAddress?: string
  secretPhrase?: string
  secretKey?: string
  password?: string
  fileId?: string
}
export const defaultValues: Required<ISlice> = {
  steps: 'WELCOME',
  walletAddress: '',
  secretPhrase: "",
  secretKey: "",
  password: "",
  fileId: "",
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useAuth = create<ISliceUpdate>((set) => ({
  ...defaultValues,
  update: (data) =>
    set((state) => {
      return { ...state, ...data }
    }),
  clear: () =>
    set((state) => {
      return { ...state, ...defaultValues }
    }),
}))
