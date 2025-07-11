import { Dimensions, PixelRatio, Platform, PlatformIOSStatic, StatusBar } from 'react-native'

const { height, width } = Dimensions.get('window')
const status = StatusBar.currentHeight as number

export const iconHitslop = { top: 10, right: 10, bottom: 10, left: 10 }
export default {
  width,
  height: Platform.OS === 'ios' ? height : height - status,
  borderWidth: 1 / PixelRatio.getPixelSizeForLayoutSize(1),
  contentPadding: 16,
  footerHeight: 60,
  fontSizeBase: 15,
  iconHitslop,
}




function isPad () {
  if (Platform.OS === 'ios') {
  const platformIOS = Platform as PlatformIOSStatic
  return platformIOS.isPad

}
return false
}
export const device = {
  isAndroid :  Platform.OS === "android",
  isPad : isPad(),
  isiOS: Platform.OS === 'ios'
}