import { Image, SafeAreaView, StyleSheet } from 'react-native'
import { TView, TText } from '@/components/ui'
import { HeaderBar } from '@/components/layout/Header'
export default function MinisafeScreen() {
  return (
    <SafeAreaView>
      <HeaderBar title="Verify Phone" />
      <TView style={styles.titleContainer}>
        <TText type="title">Welcome!</TText>
      </TView>
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: 178,
    width: 290,
    bottom: 0,
    left: 0,
    position: 'absolute',
  },
})
