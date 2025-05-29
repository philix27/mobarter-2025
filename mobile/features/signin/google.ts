import { drive_v3, google } from 'googleapis'
import CryptoJS from 'crypto-js'
import { useUser } from '@clerk/clerk-expo'

export async function useUserGoogleToken() {
  const user = useUser()
  const googleAccount = user.user!.externalAccounts.find((account) => account.provider === 'google')

  const accessToken = googleAccount?.publicMetadata?.access_token as string

  const oauth2Client = new google.auth.OAuth2()

  // Set the Clerk user's tokens
  oauth2Client.setCredentials({
    access_token: accessToken,
    // refresh_token: clerkStoredRefreshToken, // optional but recommended
  })

  const d = google.drive({
    version: 'v3',
    auth: oauth2Client,
    headers: { Authorization: `Bearer ${accessToken}` },
  })

  return d
}
// export async function getDrive(user: ReturnType<typeof useUser>) {
//   const googleAccount = user.user!.externalAccounts.find((account) => account.provider === 'google')

//   const accessToken = googleAccount?.publicMetadata?.access_token as string

//   const oauth2Client = new google.auth.OAuth2()

//   // Set the Clerk user's tokens
//   oauth2Client.setCredentials({
//     access_token: accessToken,
//     // refresh_token: clerkStoredRefreshToken, // optional but recommended
//   })

//   const d = google.drive({
//     version: 'v3',
//     auth: oauth2Client,
//     headers: { Authorization: `Bearer ${accessToken}` },
//   })

//   return d
// }

// export async function searhForFile(drive: drive_v3.Drive) {
//   const accessToken = googleAccount?.publicMetadata?.access_token
//   const response = await fetch(
//     'https://www.googleapis.com/drive/v3/files?q=name%3D%27wallet_backup.enc%27',
//     {
//       headers: {
//         Authorization: `Bearer ${accessToken}`,
//       },
//     }
//   )

//   const data = await response.json()
//   const fileId = data.files?.[0]?.id

//   if (!fileId) {
//     throw new Error('Backup file not found')
//   }
// }

// export async function downloadEcryptedKey(fileId: string, accessToken: string) {
//   const downloadResponse = await fetch(
//     `https://www.googleapis.com/drive/v3/files/${fileId}?alt=media`,
//     {
//       headers: {
//         Authorization: `Bearer ${accessToken}`,
//       },
//     }
//   )

//   const encryptedContent = await downloadResponse.text()
// }

// export async function decryptWalletKey(encrypted: string, password: string) {
//   const bytes = CryptoJS.AES.decrypt(encrypted, password)
//   return bytes.toString(CryptoJS.enc.Utf8)
// }

const encrypt = (text: string, password: string) => {
  return CryptoJS.AES.encrypt(text, password).toString()
}

const decrypt = (cipher: string, password: string) => {
  const bytes = CryptoJS.AES.decrypt(cipher, password)
  return bytes.toString(CryptoJS.enc.Utf8)
}
const FILE_NAME = 'mobarter_wallet_backup.enc'
/** Store file id on server */
// export const uploadEncryptedKey = async (drive: drive_v3.Drive, encryptedKeyString: string) => {
//   const bufferStream = new stream.PassThrough()
//   bufferStream.end(Buffer.from(encryptedKeyString))

//   const fileMetadata = {
//     name: FILE_NAME,
//     parents: ['appDataFolder'],
//   }

//   const media = {
//     mimeType: 'text/plain',
//     body: bufferStream,
//   }

//   const response = await drive.files.create({
//     requestBody: fileMetadata,
//     media,
//     fields: 'id',
//   })

//   if (response.status !== 200) {
//     throw new Error('Could not backup key')
//   }
//   return response.data.id
// }

export const getEncryptedKey = async (drive: drive_v3.Drive, fileId: string) => {
  const response = await drive.files.get(
    {
      fileId,
      alt: 'media',
    },
    { responseType: 'stream' }
  )

  let data = ''
  return new Promise((resolve, reject) => {
    response.data
      .on('data', (chunk) => {
        data += chunk
      })
      .on('end', () => {
        resolve(data) // this is the encrypted key string
      })
      .on('error', reject)
  })
}

// const encrypted = await getEncryptedKey('<FILE_ID>')
// const walletKey = decrypt(encrypted, password)
// console.log('Decrypted wallet key:', walletKey)

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
