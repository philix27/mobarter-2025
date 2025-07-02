import { Stack } from 'expo-router'

export default function RootLayout() {
  return (
    <Stack
      screenOptions={{
        headerShown: false,
        headerLeft: undefined,
        headerBackButtonMenuEnabled: true,
      }}
      
    >
      <Stack.Screen name="/kyc" />
    </Stack>
  )
}
