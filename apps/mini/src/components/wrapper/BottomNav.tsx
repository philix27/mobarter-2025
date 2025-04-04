import { MoreHorizontal } from 'lucide-react'
import Link from 'next/link'
import { useState } from 'react'

import BottomModal from '../BottomModal'

import { navLinks } from './links'

const iconStyle =
  'cursor-pointer w-full hover:bg-card flex flex-col items-center justify-center h-full'

export default function BottomNav() {
  const [showMore, setShowMore] = useState(false)
  const bottomLinks = [...navLinks]
  return (
    <div className="w-screen h-[70px] bg-background fixed bottom-0 md:hidden border-t-[0.2px] border-muted">
      <div className="flex w-full items-center justify-evenly relative h-full">
        {navLinks.slice(0, 3).map((val, i) => {
          const { Icon } = val
          return (
            <Link key={i} href={val.link} className={iconStyle}>
              {Icon}
              <p className=" font-light text-[10px] mt-2">{val.title}</p>
            </Link>
          )
        })}

        <div
          className={iconStyle}
          onClick={() => {
            setShowMore((prev) => !prev)
          }}
        >
          <MoreHorizontal size={25} />
          <p className=" font-light text-[10px] mt-1">More</p>
        </div>
      </div>

      <BottomModal
        showSheet={showMore}
        onClose={() => {
          setShowMore(false)
        }}
      >
        {bottomLinks.map((val, i) => {
          const { Icon } = val
          return (
            <div className="bg-background mb-1 rounded-md py-3 px-3" key={i}>
              <Link href={val.link} className={'flex items-center gap-x-5'}>
                {Icon}
                <p className=" font-light text-xs">{val.title}</p>
              </Link>
            </div>
          )
        })}
      </BottomModal>
    </div>
  )
}
