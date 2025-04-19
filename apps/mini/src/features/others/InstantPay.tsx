import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { logger } from 'src/lib/utils/logger'

export default function SendFiat() {
  return (
    <>
      <Input label="Wallet Address" placeholder="Enter recipients wallet address" />
      <AppSelect
        label="Currency"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={[]}
      />
      <Input label="Amount" placeholder="Amount to send" />
    </>
  )
}
