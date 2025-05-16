import React from 'react'
import { ThreeDots } from 'react-loader-spinner'

import { Skeleton } from './Skeleton'

const DThreeDots = ThreeDots as any
export function Spinner(props: {
  color?: string
  size?: number
  skeleton?: boolean
  skeletonStyle?: string
}) {
  if (props.skeleton) {
    return <Skeleton className={props.skeletonStyle} />
  }

  return (
    <div className="w-full flex items-center justify-center h-full">
      <DThreeDots
        visible={true}
        height={props.size || '80'}
        width={props.size || '80'}
        color={props.color || '#ff6719'}
        radius="9"
        ariaLabel="three-dots-loading"
        wrapperStyle={{}}
        wrapperClass=""
      />
    </div>
  )
}
