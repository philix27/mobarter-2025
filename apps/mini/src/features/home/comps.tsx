import { IconType } from 'react-icons'

export function HomeRow(params: {
  title: string
  desc: string
  onClick?: VoidFunction
  icon: IconType
}) {
  const Icon = params.icon as any
  return (
    <div
      className="flex items-center w-full bg-card px-2 py-2 mb-1 rounded-md"
      onClick={params.onClick}
    >
      <div className="mr-3 size-[35px] rounded-full bg-background flex items-center justify-center">
        <Icon className="text-primary" />
      </div>
      <div>
        <p className="font-semibold text-[14px]"> {params.title}</p>
        <p className="text-muted text-[11px] font-light">{params.desc}</p>
      </div>
    </div>
  )
}
