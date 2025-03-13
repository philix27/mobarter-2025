import { ThemedText } from '@/components/ThemedText';
import { ThemedView } from '@/components/ThemedView';
import { appColor } from '@/lib/color';
import React from 'react'

export default function Balance() {
  return (
    <ThemedView
      style={{
        marginBottom: 10,
        backgroundColor: appColor().primary,
        width: "auto",
        borderRadius: 20,
        padding: 20,
        height: 120,
      }}
    >
      <ThemedText type="defaultSemiBold">Balance:</ThemedText>
    </ThemedView>
  );
}
