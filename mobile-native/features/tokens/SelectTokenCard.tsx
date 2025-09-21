import { BtmSheet } from '@/components/layout'
import { CryptoTokensList, ITokenCategory } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'
import { TView, Row } from '@/components'
import { Label } from '@/components/forms'
import { AppStores } from '@/lib'
import { Ionicons } from '@expo/vector-icons'
import { useQuery } from '@tanstack/react-query'

import { useAddress } from '@/hooks/web3/hooks'
import { getBalance } from '../market/Balance/getBalance'
import { useColor } from '@/hooks'

export function SelectTokenCard({ ...props }: { group?: ITokenCategory }) {
  const theme = useColor()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const confirmModal = BtmSheet.useRef()
  const address = useAddress()

  const { data: balance, isLoading } = useQuery({
    // queryKey: [],
    queryKey: ['token-' + token?.symbol],
    queryFn: async () => {
      if (!token) throw new Error('Token is not selected')
      const res = await getBalance({
        address: address!,
        chianId: token.chainId.toString(),
        tokenAddress: token.address,
        decimals: token.decimals,
      })

      return res
    },
    refetchOnMount: true,
  })

  // todo: display appropriate balance

  return (
    <>
      <TView>
        <Label label="Pay with" />
        <Row
          title={token?.name ? token.name : 'Select token'}
          imgUrl={token?.logoUrl}
          desc={`Available: ${balance}  ${token?.symbol}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            confirmModal.current.open()
          }}
        />
        {token === null && <ErrMsg msg={'Please select a token'} />}
      </TView>
      <BtmSheet.Modal title="Select a token" ref={confirmModal!} style={{ width: '100%' }}>
        <CryptoTokensList variant={props.group} />
      </BtmSheet.Modal>
    </>
  )
}
export function PayableTokenCard() {
  return <SelectTokenCard group="PAYABLE" />
}
