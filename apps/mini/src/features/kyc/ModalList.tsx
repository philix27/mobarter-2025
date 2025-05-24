import React from 'react'

import SelfVerification from './comps/Self'
import VerifyBvn from './comps/VerifyBvn'
import VerifyNin from './comps/VerifyNin'
import VerifyPersonal from './comps/VerifyPersonal'
import VerifyPhone from './comps/VerifyPhone'
import BottomModal from '@/src/components/BottomModal'
import { AppStores } from '@/src/lib/zustand'

export default function KycBottomSheets() {
  const store = AppStores.useKyc()
  const active = store.modals
  return (
    <>
      <BottomModal
        fullHeight
        showSheet={active === 'VERIFY_SELF_PROTOCOL'}
        onClose={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        <SelfVerification />
      </BottomModal>
      <BottomModal
        fullHeight
        showSheet={active === 'VERIFY_PHONE'}
        onClose={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        <VerifyPhone />
      </BottomModal>
      <BottomModal
        fullHeight
        showSheet={active === 'VERIFY_NIN'}
        onClose={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        <VerifyNin />
      </BottomModal>
      <BottomModal
        fullHeight
        showSheet={active === 'VERIFY_BVN'}
        onClose={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        <VerifyBvn />
      </BottomModal>
      <BottomModal
        fullHeight
        showSheet={active === 'VERIFY_PERSONAL'}
        onClose={() => {
          store.update({ modals: 'NONE' })
        }}
      >
        <VerifyPersonal />
      </BottomModal>
    </>
  )
}
