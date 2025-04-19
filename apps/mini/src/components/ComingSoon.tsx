import Image from 'next/image'
import React from 'react'

export default function ComingSoon() {
  return (
    <div className="flex items-center justify-center h-full">
      <Image src="/coming-soon.png" alt="coming soon" width={200} height={200} />

      <div>
        <p className=" text-muted text-[14px] min-h-[30vh]">
          We are working hard to bring all our features on Telegram. This feature will be live soon.
        </p>
      </div>
    </div>
  )
}
