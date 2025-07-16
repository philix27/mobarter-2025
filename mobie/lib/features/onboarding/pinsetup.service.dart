import 'package:mobarter/features/auth/data/wallet.dart';
import 'package:mobarter/features/auth/password_service.dart';
import 'package:mobarter/features/auth/wallet_service.dart';
import 'package:mobarter/features/firestore/wallet.dart';

class PinSetupService {
  final _cryptoSvc = CryptoWalletService();
  final _walletStoreSvc = WalletStoreService();
  final _passwordSvc = PasswordService();

  Future<void> submit({
    required String question,
    required String answer,
    required String pin,
    required String userId,
  }) async {
    final walletCredentials = await _cryptoSvc.generateEthereumAddress(pin);
    final passwordCredentials = _passwordSvc.hashPasswordSecure(pin);
    final secretAnswer = _passwordSvc.hashPasswordSecure(pin);

    await _walletStoreSvc.createUserDocIfNotExists(
      userId,
      WalletModel(
        address: walletCredentials.publicAddress,
        public_key: walletCredentials.publicKey,
        ecrypted_private_key: walletCredentials.encryptedPrivateKey,
        secret_question: question,
        pin_hash: passwordCredentials.hash,
        pin_salt: passwordCredentials.salt,
        pin_iterations: passwordCredentials.iterations,
        answer_hash: secretAnswer.hash,
        answer_salt: secretAnswer.salt,
      ),
    );
  }
}
