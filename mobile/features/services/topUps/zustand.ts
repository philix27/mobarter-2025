import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type ITabs = 'AIRTIME' | 'BUNDLE' | 'DATA_PLAN'

export interface ISlice {
  activeTab?: ITabs
  phone?: string
  operatorName?: string
  dataPlan_operatorId?: number
  dataBundles_operatorId?: number
  dataPlan_amount?: string
  dataPlan_desc?: string
  dataBundle_amount?: string
  dataBundle_desc?: string
  airtime_amount?: string
  airtime_operatorId?: number
}

export const defaultValues: Required<ISlice> = {
  activeTab: 'AIRTIME',
  phone: '',
  operatorName: '',
  airtime_amount: '0',
  dataPlan_desc: '',
  dataPlan_operatorId: 0,
  dataPlan_amount: '',
  dataBundle_amount: '',
  dataBundle_desc: '',
  airtime_operatorId: 0,
  dataBundles_operatorId: 0,
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
