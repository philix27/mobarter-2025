import { ButtonHTMLAttributes, DetailedHTMLProps } from 'react';
import { cn } from 'src/lib/utils';


interface ISubmitButtonProps {
  isWalletConnected: boolean | undefined
  isBalanceLoaded: boolean | undefined
}
export function SubmitButton(
  props: DetailedHTMLProps<ButtonHTMLAttributes<HTMLButtonElement>, HTMLButtonElement> &
    ISubmitButtonProps
) {
  return (
    <button
      className={cn(
        'bg-primary px-6 py-[5px] h-[50px] w-full rounded-md my-2 border-none outline-none hover:bg-primary/50',
        props.className
      )}
      onClick={props.onClick}
    >
      {props.children}
    </button>
  )
}