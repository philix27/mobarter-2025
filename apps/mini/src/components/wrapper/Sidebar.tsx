import Link from 'next/link'

import { navLinks } from './links'

export default function Sidebar() {
  return (
    <div className="w-[100px] h-screen hidden md:block fixed left-0 mt-[70px] bg-background">
      <div className="flex flex-col h-full border-r-[0.2px] border-muted w-full">
        {navLinks.slice(0, 4).map((val, i) => {
          const Icon  = val.Icon as any
          return (
            <Link
              key={i}
              href={val.link}
              className={`
                hover:bg-card cursor-pointer  w-full
                h-[100px] flex flex-col items-center justify-center
            `}
            >
              {Icon && <Icon size={20} />}
              <p key={i} className="text-[10px] mt-2 font-light text-foreground">
                {val.title}
              </p>
            </Link>
          )
        })}
      </div>
    </div>
  )
}
