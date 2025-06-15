import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type ITabs = 'AIRTIME' | 'BUNDLE' | 'DATA_PLAN'

export interface ISlice {
  activeTab?: ITabs
  phone?: string
  operatorName?: string
  operatorId?: number
  dataPlan_amount?: string
  dataPlan_desc?: string
  dataPlan_operatorId?: string
}

export const defaultValues: Required<ISlice> = {
  activeTab: 'AIRTIME',
  phone: '',
  operatorName: '',
  dataPlan_amount: '',
  dataPlan_desc: '',
  dataPlan_operatorId: '',
  operatorId: 0
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useTopUps = create(
  persist<ISliceUpdate>(
    (set) => ({
      ...defaultValues,
      update: (data) =>
        set((state) => {
          return { ...state, ...data }
        }),
      clear: () =>
        set((state) => {
          return { ...state, ...defaultValues }
        }),
    }),
    {
      name: 'topups',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
