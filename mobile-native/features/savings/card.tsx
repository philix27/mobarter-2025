import { TText, TView } from '@/components'
import { useColor } from '@/hooks/useColor'
import { TouchableOpacity } from 'react-native'

export function SavingsCard(params: {
  title: string
  balance: string
  percentage: string
  amountAdded: string
  desc: string
  onView: VoidFunction
  onPress?: VoidFunction
  onCreate: VoidFunction
}) {
  const theme = useColor()
  return (
    <TView
      style={{
        width: '100%',
        borderColor: theme.accent,
        borderWidth: 3,
        marginBottom: 15,
        borderRadius: 20,
      }}
    >
      <TView
        style={{
          backgroundColor: theme.card,
          paddingVertical: 8,
          paddingHorizontal: 15,
          borderRadius: 15,
        }}
      >
        <TView
          style={{
            width: '100%',
            maxWidth: '100%',
            display: 'flex',
            flexDirection: 'row',
            justifyContent: 'space-between',
            backgroundColor: theme.card,
            marginBottom: 10,
          }}
        >
          <TView style={{ backgroundColor: theme.card, width: '55%' }}>
            <TText style={{ fontSize: 18, fontWeight: '700', color: theme.muted }}>
              {params.title}
            </TText>
            <TText
              style={{
                backgroundColor: theme.card,
                fontSize: 11,
                fontWeight: '300',
                width: '100%',
                color: theme.muted,
                lineHeight: 16,
              }}
            >
              {params.desc}
            </TText>
          </TView>

          <TView
            style={{
              // paddingVertical: 1,
              paddingHorizontal: 10,
              borderRadius: 40,
              backgroundColor: theme.primary,
              // width: 'auto',
              flexDirection: 'row',
              alignItems: 'center',
              justifyContent: 'center',
              height: 24,
            }}
          >
            <TText style={{ fontSize: 11, fontWeight: '600', color: '#fff' }}>
              {params.percentage}
            </TText>
          </TView>
        </TView>

        <TView
          style={{
            backgroundColor: theme.card,
            flexDirection: 'row',
            justifyContent: 'space-between',
          }}
        >
          <TText
            style={{
              padding: 0,
              fontSize: 17,
              fontWeight: '700',
              letterSpacing: 1.1,
              margin: 0,
            }}
          >
            {params.balance}
          </TText>
          <TText
            style={{
              fontSize: 13,
              fontWeight: '500',
              padding: 0,
              margin: 0,
              color: '#05b23f',
            }}
          >
            {params.amountAdded}
          </TText>
        </TView>
      </TView>

      <TView
        style={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-around',
          flexDirection: 'row',
          paddingVertical: 10,
          borderRadius: 15,
        }}
      >
        <TextButton title="View Plans" onClick={params.onView} />
        <TextButton title="Create Plans" onClick={params.onCreate} />
      </TView>
    </TView>
  )
}

function TextButton(params: { title: string; onClick?: VoidFunction }) {
  return (
    <TouchableOpacity onPress={params.onClick}>
      <TText style={{ fontWeight: 700, fontSize: 14 }}>{params.title}</TText>
    </TouchableOpacity>
  )
}
