import { TileSimple } from '@/src/components/TileSimple'
import { AppStores } from '@/src/lib/zustand'

export default function FormNigeria() {
  const store = AppStores.useKyc()

  return (
    <div className="w-full gap-y-2">
      <TileSimple
        title={'Email'}
        onClick={() => {
          store.update({ modals: 'VERIFY_EMAIL' })
        }}
      />
      <TileSimple
        title={'Self Protocol'}
        onClick={() => {
          store.update({ modals: 'VERIFY_SELF_PROTOCOL' })
        }}
      />
      <TileSimple
        title={'Phone'}
        desc="Phone number"
        onClick={() => {
          store.update({ modals: 'VERIFY_PHONE' })
        }}
      />
      <TileSimple
        title={'DOB'}
        desc="Date of Birth"
        onClick={() => {
          store.update({ modals: 'VERIFY_PERSONAL' })
        }}
      />

      <TileSimple
        title={'BVN'}
        desc="Bank Verification Number "
        onClick={() => {
          store.update({ modals: 'VERIFY_BVN' })
        }}
      />
      <TileSimple
        title={'NIN'}
        desc="National Identity Number"
        onClick={() => {
          store.update({ modals: 'VERIFY_NIN' })
        }}
      />
    </div>
  )
}
