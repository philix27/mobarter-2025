import React , { useMemo } from 'react'
import { Card, Label } from 'src/components/comps'
import Wrapper from 'src/components/wrapper/Wrapper'

import { useSignal, initData, type User } from '@telegram-apps/sdk-react';


function useInitData() {
  const initDataState = useSignal(initData.state);
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user
      ? initDataState.user
      : undefined;
  }, [initDataState]);

  return {userInfo}
 
};

export default function Page() {
  const { userInfo } = useInitData()
  if (!userInfo) return <div>No user data found</div>
  
  return (
    <Wrapper hideBottomNav>
      <div className="w-full">
        {userInfo.username && <>
          <Label>Telegram Username</Label>
          <Card>{ userInfo.username}</Card>
        </>}
        {userInfo.firstName && <>
          <Label>Telegram Username</Label>
          <Card>{ userInfo.firstName}</Card>
        </>}
        {userInfo.lastName && <>
          <Label>Telegram LastName</Label>
          <Card>{ userInfo.lastName}</Card>
        </>}
        {userInfo.lastName && <>
          <Label>Telegram LastName</Label>
          <Card>{ userInfo.lastName}</Card>
        </>}
        {userInfo.languageCode && <>
          <Label>Language</Label>
          <Card>{ userInfo.languageCode}</Card>
        </>}
       
        <Label>Wallet Address</Label>
        <Card>{'0x462E5F272B8431562811126779da6EcaE51A5B40'.slice(0, 10)}</Card>
      </div>
    </Wrapper>
  )
}