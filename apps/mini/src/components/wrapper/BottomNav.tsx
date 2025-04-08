import { MoreHorizontal } from 'lucide-react'
import Link from 'next/link'
import { useRouter } from 'next/router'
import { useState } from 'react'
import { cn } from 'src/lib/utils'

import BottomModal from '../BottomModal'

import { navLinks } from './links'

const iconStyle =
  'cursor-pointer w-full hover:bg-card flex flex-col items-center justify-center h-full'

export default function BottomNav() {
  const [showMore, setShowMore] = useState(false)
  const bottomLinks = [...navLinks]
  const router = useRouter()
  const isTelegram = true
  return (
    <div
      className={cn(
        'w-screen h-[70px] bg-background fixed bottom-0 md:hidden border-t-[0.1px] border-card',
        isTelegram && 'h-[50px] fixed'
      )}
    >
      <div className="flex w-full items-center justify-evenly relative h-full">
        {navLinks.slice(0, 3).map((val, i) => {
          const Icon = val.Icon as any
          const isActive = router.pathname === val.link
          return (
            <Link key={i} href={val.link} className={cn(iconStyle, isActive ? 'bg-card' : '')}>
              {Icon && (
                <Icon
                  size={isActive ? 24 : 20}
                  className={cn(isActive ? 'text-primary' : 'text-muted')}
                />
              )}
              {isActive || (
                <p className={cn('font-light text-[10px] mt-2 text-muted', isTelegram && "mt-1")}>{val.title}</p>
              )}
            </Link>
          )
        })}

        <div
          className={iconStyle}
          onClick={() => {
            setShowMore((prev) => !prev)
          }}
        >
          <MoreHorizontal size={25} className="text-muted" />
          <p className=" font-light text-[10px] mt-1 text-muted">More</p>
        </div>
      </div>

      <BottomModal
        showSheet={showMore}
        onClose={() => {
          setShowMore(false)
        }}
      >
        {bottomLinks.map((val, i) => {
          const Icon = val.Icon as any
          return (
            <div className="bg-background mb-1 rounded-md py-3 px-3" key={i}>
              <Link href={val.link} className={'flex items-center gap-x-5'}>
                {Icon && <Icon size={20} />}
                <p className=" font-light text-xs">{val.title}</p>
              </Link>
            </div>
          )
        })}
      </BottomModal>
    </div>
  )
}
