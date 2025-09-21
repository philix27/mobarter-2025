import { Row, TView } from '@/components'
import { Label } from '@/components/forms'
import { BtmSheet } from '@/components/layout/BottomSheet'
import { Api } from '@/graphql'
import { router } from 'expo-router'
import React from 'react'
import { getUniversalLink, SelfAppBuilder } from '@selfxyz/core'
import { useAddress } from '@/hooks/web3/hooks'
import { env } from '@/lib/env'
import { TText } from '@/components'
import { Ionicons, MaterialIcons } from '@expo/vector-icons'
import { useColor } from '@/hooks'

export default function ProfileTab() {
  const { data, loading } = Api.useUserInfo()
  const address = useAddress()
  const theme = useColor()
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

  const noNull = (v?: string) => {
    if (!v) return 'Not provided'
    if (v === null) return 'Not pro'
    return v
  }
  // if (data?.user_get.firstname === null || data?.user_get.lastname === null) {
  //   return (
  //     <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
  //       <Row
  //         bgBlank
  //         title="Self Protocol"
  //         desc="Recommended for fast verification"
  //         onClick={() => {
  //           router.push(deeplink as any)
  //         }}
  //       />
  //       <Row
  //         title="Manual Verification"
  //         desc=""
  //         onClick={() => {
  //           router.push('/profile/kyc/all')
  //         }}
  //       />
  //     </TView>
  //   )
  // }
  const FieldStatus = (props: { hasValue: boolean }) => {
    const { hasValue } = props
    if (hasValue) {
      return (
        <TView style={{ height: 40, width: 40, borderRadius: 10, backgroundColor: theme.primary }}>
          <MaterialIcons name="verified" size={24} color="#fff" />
        </TView>
      )
    }
    return (
      <TView style={{ borderRadius: 15, backgroundColor: theme.primary, paddingHorizontal: 8.5, paddingVertical: 0 }}>
        <TText style={{ fontSize: 10 }}>Update</TText>
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
          data?.user_get.firstname
            ? `${data.user_get.firstname} ${data.user_get.lastname} ${data.user_get.middlename}`
            : 'Full names'
        }
        desc={data?.user_get.firstname ? 'Full names' : 'Name must match documents'}
        bgBlank
        trailing={<FieldStatus hasValue={!!data?.user_get.firstname} />}
        onClick={() => {
          router.push('/profile/kyc/names')
        }}
      />
      <Row
        title={data?.user_get.dob ? `${data.user_get.dob}` : 'Add Date of Birth'}
        bgBlank
        desc="Must match your documents"
        trailing={<FieldStatus hasValue={!!data?.user_get.dob} />}
        onClick={() => {
          router.push('/profile/kyc/dob')
        }}
      />
      <Row
        title={data?.user_get.bvn ? `${data.user_get.bvn}` : 'Add BVN'}
        bgBlank
        desc="Bank Verification Number"
        trailing={<FieldStatus hasValue={!!data?.user_get.bvn} />}
        onClick={() => {
          router.push('/profile/kyc/bvn')
        }}
      />
      <Row
        title={data?.user_get.nin ? `${data.user_get.nin}` : 'Add NIN'}
        bgBlank
        desc="National Identity Number"
        trailing={<FieldStatus hasValue={!!data?.user_get.nin} />}
        onClick={() => {
          router.push('/profile/kyc/nin')
        }}
      />
      <Row
        title={'Phone'}
        bgBlank
        desc="Phone No. Verification"
        onClick={() => {
          router.push('/profile/kyc/phone')
        }}
      />
      <Row
        title={data?.user_get.home_address ? `${data.user_get.home_address}` : 'Add Address'}
        bgBlank
        desc={
          data?.user_get.home_address
            ? `${data.user_get.state} || ${data.user_get.country_code}`
            : 'Home Address'
        }
        trailing={<FieldStatus hasValue={!!data?.user_get.home_address} />}
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
