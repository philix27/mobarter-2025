import { TView } from '@/components';
import InputButton from '@/components/forms/Button';
import InputText from '@/components/forms/InputText';
import { ClipboardGet } from '@/lib';
import { FontAwesome6 } from '@expo/vector-icons';
import { useColor } from '@/lib/color';
import React, { useState } from 'react';
import { useActiveAccount } from 'thirdweb/react';

export default function SendCryptoScreen() {
  const account = useActiveAccount();
  const theme = useColor();
  const [walletAddress, setWalletAddress] = useState('');

  // const transaction = transfer({
  //   contract: {
  //     client: undefined,
  //     address: '0x454',
  //     chain: celo,
  //   },
  //   to: '0x...',
  //   amount: 100,
  // });

  const handleSend = async () => {
    account?.sendTransaction({
      chainId: 0,
      data: '0x232',
      value: BigInt(21),
    });
    // await sendTransaction({ transaction, account: '0x3231' });
  };
  return (
    <TView style={{ width: '100%' }}>
      <InputText
        label={'Wallet Address'}
        keyboardType="default"
        placeholder={'Enter wallet address'}
        value={walletAddress}
        // value={formData.email}
        // onChangeText={(text) => handleChange("email", text.toLowerCase())}
        // error={errors!.email === undefined ? undefined : errors!.email}
        onTrailingIconPress={async () => {
          const text = await ClipboardGet();
          setWalletAddress(text);

          console.log(text);
        }}
        trailingIcon={
          <FontAwesome6 name="paste" size={20} color={theme.muted} />
        }
      />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        placeholder={'Enter amount'}
        // value={formData.email}
        // onChangeText={(text) => handleChange("email", text.toLowerCase())}
        // error={errors!.email === undefined ? undefined : errors!.email}
      />
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <InputButton title="Send" onPress={() => {}} style={{ width: '50%' }} />
      </TView>
    </TView>
  );
}
