import React from 'react'
import SelfVerification from '../features/kyc/comps/Self'
import { getUniversalLink, SelfAppBuilder } from '@selfxyz/core'
import { Button } from '../components/Button'
import { useRouter } from 'next/router'
// import { useRouter } from 'next/'

export default function SelfKyc() {
    const router = useRouter()
    // Create the SelfApp configuration
    const selfApp = new SelfAppBuilder({
        appName: 'Mobarter',
        scope: 'telegram-mini-app',
        endpoint: process.env.NEXT_PUBLIC_BACKEND_SELF_ENDPOINT,
        header: 'A payment solution for Africans',
        userIdType: 'hex', // only for if you want to link the proof with the user address
        userId: "0x20F50b8832f87104853df3FdDA47Dd464f885a49",
        // logoBase64: logoBase64ToString,
    }).build()

    const deeplink = getUniversalLink(selfApp)


    return (
        <div>
            <SelfVerification />

            <Button onClick={ async() => {
                await router.push(deeplink);
            }}>Deep Link</Button>
        </div>
    )
}
