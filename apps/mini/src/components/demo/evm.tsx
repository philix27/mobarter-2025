import { SignTypedDataVersion } from '@particle-network/auth-core'
import { useCustomize, useEthereum } from '@particle-network/auth-core-modal'
import { type ChainInfo, chains } from '@particle-network/chains'
import { useEffect, useMemo } from 'react'
import { toast } from 'sonner'
import { erc4337Config } from 'src/lib/config/erc4337'
import { messageValue, typedDataValue } from 'src/lib/config/particleData'
import { logger } from 'src/lib/utils/logger'
import { shortString } from 'src/lib/utils/string'

import { Button } from '../Button'
import { AppSelect } from '../Select'

import { useAppContext } from '@/src/Root/providers/TgContext'

const EVMDemo = () => {
  const { signMessage, signTypedData, sendTransaction, chainInfo, switchChain } = useEthereum()

  const { handleError, smartAccount } = useAppContext()

  const { erc4337, setERC4337 } = useCustomize()

  useEffect(() => {
    const option = localStorage.getItem('erc-4337')
    if (option) {
      setERC4337(JSON.parse(option))
    }
  }, [setERC4337])

  const onSignMessage = async () => {
    try {
      const result = await signMessage(messageValue)
      toast.success(`Sign Message Success! Signature: ${shortString(result)}`)
    } catch (error: any) {
      logger.error('signMessage error', error)
      handleError(error)
    }
  }

  const onSignTypedData = async () => {
    try {
      const result = await signTypedData({
        data: typedDataValue as any,
        version: SignTypedDataVersion.V4,
      })
      toast.success(`Sign Typed Data Success! Signature: ${shortString(result)}`)
    } catch (error: any) {
      logger.error('signMessage error', error)
      handleError(error)
    }
  }

  const sendNative = async () => {
    try {
      if (!erc4337) {
        const result = await sendTransaction({
          to: '0x6Bc8fd522354e4244531ce3D2B99f5dF2aAE335e',
          value: '0x1',
          data: '0x',
        })
        toast.success(`Send Native Success! Hash: ${shortString(result)}`)
      } else {
        const result = await smartAccount!.sendTransaction({
          tx: {
            to: '0x6Bc8fd522354e4244531ce3D2B99f5dF2aAE335e',
            value: '0x1',
            data: '0x',
          },
        })
        toast.success(`(AA)Send Native Success! Hash: ${shortString(result)}`)
      }
    } catch (error: any) {
      logger.error('sendNative error', error)
      handleError(error)
    }
  }

  const onSwitchChain = (key: string) => {
    if (!key) return
    const chainId = Number(key.split('-')[1])
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    switchChain(chainId)
  }

  const onSelectERC4337 = async (key: string) => {
    if (!key) {
      setERC4337(undefined)
      localStorage.removeItem('erc-4337')
      return
    }

    const infos = key.split('-')
    const name = infos[0]
    const version = infos[1]
    const config = erc4337Config.find((item) => item.name === name && item.version === version)
    if (config) {
      const { chains, ...option } = config
      if (!chains.find((chain) => chain.id === chainInfo.id)) {
        await switchChain(config.chains[0].id)
      }
      setERC4337(option)
      localStorage.setItem('erc-4337', JSON.stringify(option))
    } else {
      setERC4337(undefined)
      localStorage.removeItem('erc-4337')
    }
  }

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
    <div className="flex w-full flex-col items-center gap-4 py-10">
      <AppSelect
        label="Select a chain"
        onChange={(newValue: string) => {
          onSwitchChain(newValue)
        }}
        data={supportChains.map((chain) => {
          return { label: chain.fullname, value: `${chain.name}-${chain.id}` }
        })}
      />

      <AppSelect
        label="Account Abstraction"
        onChange={async (newValue: string) => {
          await onSelectERC4337(newValue)
        }}
        data={[{ name: 'DISABLE', value: '' }, ...erc4337Config].map((config) => {
          return {
            label: `${config!.name}`,
            value: `${config!.name}`,
          }
        })}
        // data={[
        //   erc4337
        //     ? {
        //         label: `${erc4337!.name}-${erc4337.version}`,
        //         value: `${erc4337.name}-${erc4337.version}`,
        //       }
        //     : { label: 'DISABLE', value: 'DISABLE-' },
        // ]}
      />
      {/* <Select
        isRequired
        label="Account Abstraction"
        placeholder="Select an contract"
        className="w-4/5"
        selectedKeys={[erc4337 ? `${erc4337.name}-${erc4337.version}` : 'DISABLE-']}
        onSelectionChange={(data) => onSelectERC4337(data.currentKey as string)}
      >
        {[{ name: 'DISABLE', version: '', chains: [] }, ...erc4337Config].map((config) => (
          <SelectItem
            key={`${config.name}-${config.version}`}
          >{`${config.name}${config.version}`}</SelectItem>
        ))}
      </Select> */}

      <Button onClick={onSignMessage}>Sign Message</Button>
      <Button onClick={onSignTypedData}>Sign Typed Data</Button>
      <Button onClick={sendNative}>Send Native (1 wei)</Button>
    </div>
  )
}

export default EVMDemo
