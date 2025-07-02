import { ethers } from 'ethers'

export function generateWallet() {
  // 1. Create a random mnemonic (BIP39 seed phrase)
  const mnemonic = ethers.Wallet.createRandom().mnemonic!.phrase

  // 2. Derive the wallet from the mnemonic
  const wallet = ethers.Wallet.fromPhrase(mnemonic)

  // 3. Return mnemonic, private key, and address
  return {
    seedPhrase: mnemonic,
    privateKey: wallet.privateKey,
    address: wallet.address,
  }
}
