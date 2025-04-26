import Image from 'next/image'
import React from 'react'

const DImage = Image as any

export function ComingSoon(props: { text?: string }) {
  return (
    <div className="flex flex-col w-full items-center justify-center h-full gap-y-5 min-h-[50vh]">
      <DImage src="/coming-soon.png" alt="coming soon" width={100} height={100} />

      <p className=" text-muted text-[14px] min-h-[30vh] text-center mx-7">
        {props.text ||
          ' We are working hard to bring all our features on Telegram. This feature will be live soon.'}
      </p>
    </div>
  )
}
export default ComingSoon
export function NotFound(props: { text?: string }) {
  return (
    <div className="flex flex-col w-full items-center justify-center h-full gap-y-5 min-h-[50vh]">
      <DImage src="/notfound.png" alt="coming soon" width={100} height={100} className="my-10" />
      {props.text && <p className=" text-muted text-[14px] mb-5 text-center mx-7">{props.text}</p>}
    </div>
  )
}
