import { useCustomize } from '@particle-network/auth-core-modal'
import { type ChainInfo, chains } from '@particle-network/chains'
import { useMemo } from 'react'
import { TileSimple } from 'src/components/TileSimple'
import { erc4337Config } from 'src/lib/config/erc4337'

export default function SelectNetwork() {
  const { erc4337 } = useCustomize()
  const supportChains = useMemo((): ChainInfo[] => {
    if (erc4337) {
      const config = erc4337Config.find(
        (item) => item.name === erc4337.name && item.version === erc4337.version
      )
      if (config) {
        return config.chains as ChainInfo[]
      }
    }
    return chains
      .getAllChainInfos()
      .filter((chain) => chain.chainType === 'evm' && chain.name.toLowerCase() !== 'tron')
  }, [erc4337])
  return (
    <div>
      {supportChains.map((val, i) => (
        <TileSimple key={i} title={val.name} desc={val.name} imgUrl={val.nativeIcon} />
      ))}
    </div>
  )
}
