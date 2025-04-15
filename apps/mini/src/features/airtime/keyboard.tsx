import React, { ReactNode } from 'react'

export default function Keyboard(props: {
  setVal: React.Dispatch<React.SetStateAction<string>>
  value: string
}) {
  const { value, setVal } = props
  return (
    <div className="bg-card p-1 rounded-md w-full mt-5">
      {/* <div className="h-[50px] flex items-center justify-center text-xl">{value}</div> */}
      <div className="grid grid-cols-3 w-full gap-y-2 gap-x-2">
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '1'
            })
          }}
        >
          1
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '2'
            })
          }}
        >
          2
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '3'
            })
          }}
        >
          3
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '4'
            })
          }}
        >
          4
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '5'
            })
          }}
        >
          5
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '6'
            })
          }}
        >
          6
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '7'
            })
          }}
        >
          7
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '8'
            })
          }}
        >
          8
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '9'
            })
          }}
        >
          9
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              if (prev.includes('.')) return prev
              return prev + '.'
            })
          }}
        >
          .
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            setVal((prev) => {
              return prev + '0'
            })
          }}
        >
          0
        </KeyBtn>
        <KeyBtn
          onClick={() => {
            const l = value.split('')
            l.pop()
            const newV = l.join('')
            setVal(newV)
          }}
        >
          Clear
        </KeyBtn>
      </div>
    </div>
  )
}

function KeyBtn(params: { children: ReactNode; onClick: VoidFunction }) {
  return (
    <div
      onClick={params.onClick}
      className={`bg-background hover:bg-secondary
  w-full rounded-md
  items-center justify-center flex font-semibold
  py-2
  `}
    >
      {params.children}
    </div>
  )
}
