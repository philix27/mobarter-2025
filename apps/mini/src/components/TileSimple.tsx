/* eslint-disable @next/next/no-img-element */
import { IconType } from 'react-icons'
import { cn } from 'src/lib/utils'

export function TileSimple(params: {
  title: string
  desc?: string | undefined
  imgUrl?: string | undefined
  className?: string
  onClick?: VoidFunction
  icon?: IconType
}) {
  const Icon = params.icon as any
  return (
    <div
      className={cn('flex items-center w-full bg-card px-2 py-2 mb-1 rounded-md', params.className)}
      onClick={params.onClick}
    >
      {params.imgUrl && (
        // eslint-disable-next-line react/jsx-no-comment-textnodes
        <div className="mr-3 size-[35px] rounded-full bg-background flex items-center justify-center">
          <img src={params.imgUrl} alt="flag" className="rounded-full h-full object-cover" />
        </div>
      )}

      {params.icon && (
        <div className="mr-3 size-[35px] rounded-full bg-background flex items-center justify-center">
          <Icon className="text-muted" size={20} />
        </div>
      )}

      <div>
        <p className="font-semibold text-[14px]"> {params.title}</p>
        {params.desc && <p className="text-muted text-[12px] font-light">{params.desc}</p>}
      </div>
    </div>
  )
}
