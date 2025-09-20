import React, {
  createContext,
  memo,
  PropsWithChildren,
  ReactNode,
  useContext,
  useState,
} from 'react'
import { Text, View } from 'react-native'
import AnimatedLottieView from 'lottie-react-native'
import { useColor } from '@/hooks'
import { InputButton } from '@/components/forms'

// Define the shape of the context
type ResponseContextProps = {
  showSuccess: (text?: string) => void
  showLoading: (value: boolean) => void
  showError: (value: string) => void
}

type SuccessState = { show: boolean; text: string }
type ErrorState = { show: boolean; text: string }
const ResponseContext = createContext<ResponseContextProps | null>(null)

// ResponseProvider component
export default function ResponseProvider({ children }: PropsWithChildren) {
  const [loading, setLoading] = useState<boolean>(false)
  const [success, setSuccess] = useState<SuccessState>({ show: false, text: '' })
  const [error, setError] = useState<ErrorState>({ show: false, text: '' })
  // Function to show success overlay
  const showSuccess = (text?: string) => {
    setSuccess({ show: true, text: text || '' })
    setLoading(false)
  }

  // Function to show success overlay
  const showError = (text?: string) => {
    setError({ show: true, text: text || '' })
    setLoading(false)
  }

  // Function to hide success overlay
  const onHideSuccess = () => {
    setSuccess({ show: false, text: '' })
  }

  // Function to hide success overlay
  const onHideError = () => {
    setError({ show: false, text: '' })
  }

  // Function to toggle loading state
  const showLoading = (value: boolean) => {
    setLoading(value)
  }

  return (
    <ResponseContext.Provider value={{ showSuccess, showLoading, showError }}>
      {children}
      <LoadingProvider loading={loading} />
      <SuccessProvider success={success} onHide={onHideSuccess} />
      <ErrorProvider success={error} onHide={onHideError} />
    </ResponseContext.Provider>
  )
}

const Icon = (props: { name: 'SUCCESS' | 'ERROR' | 'LOADING' }) => {
  const paths = {
    SUCCESS: require('./lottie/success.json'),
    ERROR: require('./lottie/error.json'),
    LOADING: require('./lottie/loading.json'),
  }
  return (
    <AnimatedLottieView
      loop
      autoPlay
      style={{
        height: 200,
        width: 200,
        marginBottom: 10,
      }}
      source={paths[props.name]}
    />
  )
}
// SuccessProvider for showing success animations
const SuccessProvider = memo(
  ({ success, onHide }: { success: SuccessState; onHide: () => void }) => {
    if (!success.show) return null
    const theme = useColor()
    return (
      <Container title="Success!" desc={success.text}>
        <Icon name="SUCCESS" />
        <InputButton title="Continue" onPress={onHide} />
      </Container>
    )
  }
)

// SuccessProvider for showing success animations
const ErrorProvider = memo(({ success, onHide }: { success: SuccessState; onHide: () => void }) => {
  if (!success.show) return null

  return (
    <Container title="Error!" desc={success.text}>
      <Icon name="ERROR" />
      <InputButton title="Continue" onPress={onHide} />
    </Container>
  )
})
// LoadingProvider for showing loading indicator
const LoadingProvider = memo(({ loading }: { loading: boolean }) => {
  if (!loading) return null

  return (
    <Container>
      <Icon name="LOADING" />
    </Container>
  )
})

const Container = memo((props: { children: ReactNode; title?: string; desc?: string }) => {
  const theme = useColor()
  return (
    <>
      {/* Background overlay */}
      <View
        style={{
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          position: 'absolute',
          opacity: 0.95,
          backgroundColor: theme.background,
        }}
      />
      {/* Success content */}
      <View
        style={{
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          position: 'absolute',
          flex: 1,
          marginHorizontal: 10,
          marginVertical: 50,
        }}
      >
        <View
          style={{
            flex: 1,
            justifyContent: 'center',
            alignItems: 'center',
          }}
        >
          {props.title && (
            <Text style={{ fontSize: 25, color: 'white', marginBottom: 10, fontWeight: '800' }}>
              {props.title}
            </Text>
          )}
          {props.desc && (
            <Text
              style={{
                color: 'white',
                fontWeight: '600',
                fontSize: 20,
                textAlign: 'center',
                marginBottom: 20,
              }}
            >
              {props.desc}
            </Text>
          )}
          {props.children}
        </View>
      </View>
    </>
  )
})
// Hook to use the context
export function useResponse() {
  const context = useContext(ResponseContext)
  if (!context) {
    throw new Error('useResponse must be used within a ResponseProvider')
  }
  return context
}
