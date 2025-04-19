import Image from 'next/image'
import React from 'react'

export default function ComingSoon() {
  return (
    <div className="flex flex-col w-full items-center justify-center h-full gap-y-5">
      <Image src="/coming-soon.png" alt="coming soon" width={200} height={200} />

      <p className=" text-muted text-[14px] min-h-[30vh] text-center">
        We are working hard to bring all our features on Telegram. This feature will be live soon.
      </p>
    </div>
  )
}
