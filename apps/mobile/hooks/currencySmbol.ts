import { AppStores } from '@/lib'

// export const useCountry = () => {
//   const countryStore = AppStores.useCountries()
//   let currencySymbol = 'NGN'
//   let phoneCode = 'NGN'
  
//   if (!countryStore.countries || countryStore.countries.length === 0) {
//     currencySymbol = 'NGN'
//     phoneCode = '234'
//   } else {
//     currencySymbol = countryStore.countries.filter(
//       (val) => val.isoName === countryStore.activeIso
//     )[0].currencySymbol
//     phoneCode = countryStore.countries.filter((val) => val.isoName === countryStore.activeIso)[0]
//       .callingCodes
//   }

//   return { currencySymbol, phoneCode, iso: countryStore.activeIso }
// }
