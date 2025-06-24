import { Row, TView } from '@/components'
import { Label } from '@/components/forms'
import { BtmSheet } from '@/components/layout/BottomSheet'
import { Api } from '@/graphql'
import { router } from 'expo-router'
import React from 'react'
import { getUniversalLink, SelfAppBuilder } from '@selfxyz/core'
import { useAddress } from '@/hooks/web3/hooks'
import { env } from '@/lib/env'

export default function ProfileTab() {
  const { data, loading } = Api.useUserInfo()
  const address = useAddress()

  // Create the SelfApp configuration
  const selfApp = new SelfAppBuilder({
    appName: 'Mobarter',
    scope: 'telegram-mini-app',
    endpoint: env.BACKEND_SELF_ENDPOINT,
    header: 'A payment solution for Africans',
    userIdType: 'hex', // only for if you want to link the proof with the user address
    userId: address,
    // logoBase64: logoBase64ToString,
  }).build()

  const deeplink = getUniversalLink(selfApp)
  const bottomSheet = BtmSheet.useRef()

  if (data?.user_get.firstname === null || data?.user_get.lastname === null) {
    return (
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <Row
          title="Self Protocol"
          desc="Recommended for fast verification"
          onClick={() => {
            router.push(deeplink as any)
          }}
        />
        <Row
          title="Manual Verification"
          desc=""
          onClick={() => {
            router.push('/profile/kyc/all')
          }}
        />
      </TView>
    )
  }

  return (
    <>
      <BtmSheet.Modal ref={bottomSheet!}>
        <Row
          title="Self Protocol"
          desc=""
          onClick={() => {
            router.push(deeplink as any)
          }}
        />
        <Row
          title="Manual"
          desc=""
          onClick={() => {
            router.push('/profile/kyc/all')
          }}
        />
      </BtmSheet.Modal>

      <Row
        title={
          data
            ? `${data.user_get.firstname} ${data.user_get.lastname} ${data.user_get.middlename}`
            : 'Full names'
        }
        desc={data?.user_get.firstname ? 'Full names' : 'Name must match documents'}
        onClick={() => {
          router.push('/profile/kyc/names')
        }}
      />
      <Row
        title={data ? `${data.user_get.dob}` : 'Add Date of Birth'}
        desc="Must match your documents"
        onClick={() => {
          router.push('/profile/kyc/dob')
        }}
      />
      <Row
        title={data ? `${data.user_get.bvn}` : 'Add BVN'}
        desc="Bank Verification Number"
        onClick={() => {
          router.push('/profile/kyc/bvn')
        }}
      />
      <Row
        title={data ? `${data.user_get.nin}` : 'Add NIN'}
        desc="National Identity Number"
        onClick={() => {
          router.push('/profile/kyc/nin')
        }}
      />
      <Row
        title={'Phone'}
        desc="Phone No. Verification"
        onClick={() => {
          router.push('/profile/kyc/phone')
        }}
      />
      <Row
        title={data ? `${data.user_get.home_address}` : 'Add Address'}
        desc={data ? `${data.user_get.state} || ${data.user_get.country_code}` : 'Home Address'}
        onClick={() => {
          router.push('/profile/kyc/address')
        }}
      />
      <TView style={{ marginTop: 20 }}>
        <Label label="Others" />
      </TView>
    </>
  )
}
