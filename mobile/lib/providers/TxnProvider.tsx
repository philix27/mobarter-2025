import React, { createContext, useState, useEffect, ReactNode } from 'react'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { useColorScheme } from 'react-native'

type ITxnMsg = {
  from: string
  to: string
}
// send txn
// confirm txn
// show Modal
//  hide modal
// collect pin

export const Ctx = createContext<{
  showConfirmModal: boolean
  txnMsg: ITxnMsg
  processTxn: (fn: Promise<VoidFunction>) => void
  enterPin: (pin: string) => void
}>({
  processTxn: () => {},
  showConfirmModal: false,
  enterPin: (pin: string) => {},
  txnMsg: {
    from: '',
    to: '',
  },
})

export const TxnProvider = ({ children }: { children: ReactNode }) => {
  const colorScheme = useColorScheme()
  const [txnMsg, setTxnMsg] = useState<ITxnMsg>()
  const [showConfirmModal, setShowConfirmModal] = useState<boolean>(false)
  let _fn: Promise<VoidFunction>

  const processTxn = async (fn: Promise<VoidFunction>) => {
    setTxnMsg({
      from: '',
      to: '',
    })
    setShowConfirmModal(true)

    // todo:  show txn info
    _fn = fn
  }

  const enterPin = async (pin: string) => {
    if (!validatePin(pin)) {
      // todo:  show err msg
      return
    }
    // todo:  use pin to generate wallet client
    await _fn
    setShowConfirmModal(false)
  }
  const validatePin = async (pin: string) => {
    if (pin !== '123456') return false
    return true
  }

  return (
    <Ctx.Provider value={{ txnMsg: txnMsg!, showConfirmModal, processTxn, enterPin }}>
      {children}
    </Ctx.Provider>
  )
}

export const useTxnContext = () => {
  const ctx = React.useContext(Ctx)
  if (!ctx) throw Error('App Hooks must be inside a Provider.')
  return ctx
}
const Comp = () => {
  const ctx = useTxnContext()
  ctx
  return null
}
