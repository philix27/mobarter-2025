import { Row, TView } from '@/components'
import { Label } from '@/components/forms'
import { Api } from '@/graphql'
import { router } from 'expo-router'
import React from 'react'

export default function ProfileTab() {
  const { data, loading } = Api.useUserInfo()
  return (
    <>
      <Row
        title="Self Protocol"
        desc=""
        onClick={() => {
          router.push('/profile/kyc/self')
        }}
      />
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
      <Row
        title="Bank accounts"
        desc="Manage bank account details"
        onClick={() => {
          router.push('/bank')
        }}
      />
    </>
  )
}
