import { TView , TText} from '@/components'
import { Link, Stack } from 'expo-router'
import { StyleSheet } from 'react-native'

export default function NotFoundScreen() {
  return (
    <>
      <Stack.Screen options={{ title: 'Oops!' }} />
      <TView style={styles.container}>
        <TText type="title">This screen doesn't exist.</TText>
        <Link href="/" style={styles.link}>
          <TText type="link">Go to home screen!</TText>
        </Link>
      </TView>
    </>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
  },
  link: {
    marginTop: 15,
    paddingVertical: 15,
  },
})
