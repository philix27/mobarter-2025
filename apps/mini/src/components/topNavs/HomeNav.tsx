import { ArrowLeft, MenuIcon } from 'lucide-react'
import Link from 'next/link'
import { useRouter } from 'next/router'
import { AppStores } from 'src/lib/zustand'

export default function HomeNav(props: { showBack?: boolean }) {
  const store = AppStores.useSettings()
  const router = useRouter()
  return (
    <div
      className={`
        h-[50px] md:h-[70px] w-screen fixed bg-background
        top-0 flex items-center justify-center z-10
    `}
    >
      <div className="flex items-center justify-between w-[98%] md:w-[90%] p-5 ">
        {props.showBack ? (
          <ArrowLeft
            className=""
            onClick={() => {
              router.back()
            }}
          />
        ) : (
          <Link href="/" className="text-primary text-xl font-bold">
            Mobarter
          </Link>
        )}

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
