import { IconType } from 'react-icons'

export function Row(props: { text: string; Icon: IconType; onClick: VoidFunction }) {
  const Icon = props.Icon as any
  return (
    <div
      className="flex p-2 items-center bg-background rounded-md hover:bg-card"
      onClick={props.onClick}
    >
      <Icon className="mr-3" />
      <p className="text-[14px]">{props.text}</p>
    </div>
  )
}
