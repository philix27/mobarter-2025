import { MenuIcon } from 'lucide-react'
import Link from 'next/link'
import { AppStores } from 'src/lib/zustand'

export default function TopNav() {
  const store = AppStores.useSettings()
  return (
    <div
      className={`
        h-[70px] w-screen fixed bg-background
        top-0 flex items-center justify-center z-10
    `}
    >
      <div className="flex items-center justify-between w-[98%] md:w-[90%] p-5 ">
        <Link href="/" className="text-primary text-xl font-bold">
          Mobarter
        </Link>
        <div className="flex gap-x-2 items-center">
          {/* <ConnectButton /> */}

          <MenuIcon
            className="text-muted"
            onClick={() => {
              store.update({ drawerIsOpen: true })
            }}
          />
        </div>
      </div>
    </div>
  )
}
