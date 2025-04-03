/* eslint-disable */
import * as types from './graphql';
import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';

/**
 * Map of all GraphQL operations in the project.
 *
 * This map has several performance disadvantages:
 * 1. It is not tree-shakeable, so it will include all operations in the project.
 * 2. It is not minifiable, so the string of a GraphQL query will be multiple times inside the bundle.
 * 3. It does not support dead code elimination, so it will add unused operations.
 *
 * Therefore it is highly recommended to use the babel or swc plugin for production.
 * Learn more about it here: https://the-guild.dev/graphql/codegen/plugins/presets/preset-client#reducing-bundle-size
 */
type Documents = {
    "mutation Adverts_update($input: Advert_UpdateInput!) {\n  adverts_update(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nmutation Adverts_create($input: Advert_CreateInput!) {\n  adverts_create(input: $input) {\n    rate\n    advertStatus\n    limitLower\n    limitUpper\n    tradeType\n    currencyFiat\n    currencyCrypto\n  }\n}\n\nmutation Adverts_delete($input: Advert_DeleteInput!) {\n  adverts_delete(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nquery Adverts_getAll($input: Advert_GetAllInput!) {\n  adverts_getAll(input: $input) {\n    advertStatus\n    duration\n    tradeType\n    rate\n    instructions\n    limitLower\n    limitUpper\n  }\n}\n\nquery Adverts_getOne($input: Advert_GetOneInput!) {\n  adverts_getOne(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}": typeof types.Adverts_UpdateDocument,
    "mutation Auth_login($input: Auth_LoginInput!) {\n  auth_login(input: $input) {\n    firstname\n    country\n    lastname\n    middlename\n    email\n    token\n  }\n}\n\nmutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {\n  auth_resetPassword(input: $input) {\n    message\n  }\n}\n\nmutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {\n  auth_sendEmailOtp(input: $input) {\n    message\n    token\n  }\n}\n\nmutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {\n  auth_verifyEmailOtp(input: $input) {\n    message\n  }\n}\n\nmutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {\n  auth_createAccount(input: $input) {\n    message\n  }\n}": typeof types.Auth_LoginDocument,
    "mutation BankAccount_delete($input: BankAccount_DeleteInput!) {\n  bankAccount_delete(input: $input) {\n    message\n  }\n}\n\nmutation BankAccount_create($input: BankAccount_CreateInput!) {\n  bankAccount_create(input: $input) {\n    id\n    bank_name\n    account_name\n    account_no\n  }\n}\n\nquery BankAccount_getAll {\n  bankAccount_getAll {\n    id\n    account_name\n    account_no\n    bank_name\n  }\n}": typeof types.BankAccount_DeleteDocument,
    "mutation WalletCrypto_create {\n  walletCrypto_create {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}\n\nquery WalletCrypto_getAll {\n  walletCrypto_getAll {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}": typeof types.WalletCrypto_CreateDocument,
};
const documents: Documents = {
    "mutation Adverts_update($input: Advert_UpdateInput!) {\n  adverts_update(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nmutation Adverts_create($input: Advert_CreateInput!) {\n  adverts_create(input: $input) {\n    rate\n    advertStatus\n    limitLower\n    limitUpper\n    tradeType\n    currencyFiat\n    currencyCrypto\n  }\n}\n\nmutation Adverts_delete($input: Advert_DeleteInput!) {\n  adverts_delete(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nquery Adverts_getAll($input: Advert_GetAllInput!) {\n  adverts_getAll(input: $input) {\n    advertStatus\n    duration\n    tradeType\n    rate\n    instructions\n    limitLower\n    limitUpper\n  }\n}\n\nquery Adverts_getOne($input: Advert_GetOneInput!) {\n  adverts_getOne(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}": types.Adverts_UpdateDocument,
    "mutation Auth_login($input: Auth_LoginInput!) {\n  auth_login(input: $input) {\n    firstname\n    country\n    lastname\n    middlename\n    email\n    token\n  }\n}\n\nmutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {\n  auth_resetPassword(input: $input) {\n    message\n  }\n}\n\nmutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {\n  auth_sendEmailOtp(input: $input) {\n    message\n    token\n  }\n}\n\nmutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {\n  auth_verifyEmailOtp(input: $input) {\n    message\n  }\n}\n\nmutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {\n  auth_createAccount(input: $input) {\n    message\n  }\n}": types.Auth_LoginDocument,
    "mutation BankAccount_delete($input: BankAccount_DeleteInput!) {\n  bankAccount_delete(input: $input) {\n    message\n  }\n}\n\nmutation BankAccount_create($input: BankAccount_CreateInput!) {\n  bankAccount_create(input: $input) {\n    id\n    bank_name\n    account_name\n    account_no\n  }\n}\n\nquery BankAccount_getAll {\n  bankAccount_getAll {\n    id\n    account_name\n    account_no\n    bank_name\n  }\n}": types.BankAccount_DeleteDocument,
    "mutation WalletCrypto_create {\n  walletCrypto_create {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}\n\nquery WalletCrypto_getAll {\n  walletCrypto_getAll {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}": types.WalletCrypto_CreateDocument,
};

/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 *
 *
 * @example
 * ```ts
 * const query = graphql(`query GetUser($id: ID!) { user(id: $id) { name } }`);
 * ```
 *
 * The query argument is unknown!
 * Please regenerate the types.
 */
export function graphql(source: string): unknown;

/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "mutation Adverts_update($input: Advert_UpdateInput!) {\n  adverts_update(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nmutation Adverts_create($input: Advert_CreateInput!) {\n  adverts_create(input: $input) {\n    rate\n    advertStatus\n    limitLower\n    limitUpper\n    tradeType\n    currencyFiat\n    currencyCrypto\n  }\n}\n\nmutation Adverts_delete($input: Advert_DeleteInput!) {\n  adverts_delete(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nquery Adverts_getAll($input: Advert_GetAllInput!) {\n  adverts_getAll(input: $input) {\n    advertStatus\n    duration\n    tradeType\n    rate\n    instructions\n    limitLower\n    limitUpper\n  }\n}\n\nquery Adverts_getOne($input: Advert_GetOneInput!) {\n  adverts_getOne(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}"): (typeof documents)["mutation Adverts_update($input: Advert_UpdateInput!) {\n  adverts_update(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nmutation Adverts_create($input: Advert_CreateInput!) {\n  adverts_create(input: $input) {\n    rate\n    advertStatus\n    limitLower\n    limitUpper\n    tradeType\n    currencyFiat\n    currencyCrypto\n  }\n}\n\nmutation Adverts_delete($input: Advert_DeleteInput!) {\n  adverts_delete(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}\n\nquery Adverts_getAll($input: Advert_GetAllInput!) {\n  adverts_getAll(input: $input) {\n    advertStatus\n    duration\n    tradeType\n    rate\n    instructions\n    limitLower\n    limitUpper\n  }\n}\n\nquery Adverts_getOne($input: Advert_GetOneInput!) {\n  adverts_getOne(input: $input) {\n    rate\n    currencyFiat\n    currencyCrypto\n    advertStatus\n    duration\n    limitLower\n    limitUpper\n    tradeType\n  }\n}"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "mutation Auth_login($input: Auth_LoginInput!) {\n  auth_login(input: $input) {\n    firstname\n    country\n    lastname\n    middlename\n    email\n    token\n  }\n}\n\nmutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {\n  auth_resetPassword(input: $input) {\n    message\n  }\n}\n\nmutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {\n  auth_sendEmailOtp(input: $input) {\n    message\n    token\n  }\n}\n\nmutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {\n  auth_verifyEmailOtp(input: $input) {\n    message\n  }\n}\n\nmutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {\n  auth_createAccount(input: $input) {\n    message\n  }\n}"): (typeof documents)["mutation Auth_login($input: Auth_LoginInput!) {\n  auth_login(input: $input) {\n    firstname\n    country\n    lastname\n    middlename\n    email\n    token\n  }\n}\n\nmutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {\n  auth_resetPassword(input: $input) {\n    message\n  }\n}\n\nmutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {\n  auth_sendEmailOtp(input: $input) {\n    message\n    token\n  }\n}\n\nmutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {\n  auth_verifyEmailOtp(input: $input) {\n    message\n  }\n}\n\nmutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {\n  auth_createAccount(input: $input) {\n    message\n  }\n}"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "mutation BankAccount_delete($input: BankAccount_DeleteInput!) {\n  bankAccount_delete(input: $input) {\n    message\n  }\n}\n\nmutation BankAccount_create($input: BankAccount_CreateInput!) {\n  bankAccount_create(input: $input) {\n    id\n    bank_name\n    account_name\n    account_no\n  }\n}\n\nquery BankAccount_getAll {\n  bankAccount_getAll {\n    id\n    account_name\n    account_no\n    bank_name\n  }\n}"): (typeof documents)["mutation BankAccount_delete($input: BankAccount_DeleteInput!) {\n  bankAccount_delete(input: $input) {\n    message\n  }\n}\n\nmutation BankAccount_create($input: BankAccount_CreateInput!) {\n  bankAccount_create(input: $input) {\n    id\n    bank_name\n    account_name\n    account_no\n  }\n}\n\nquery BankAccount_getAll {\n  bankAccount_getAll {\n    id\n    account_name\n    account_no\n    bank_name\n  }\n}"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "mutation WalletCrypto_create {\n  walletCrypto_create {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}\n\nquery WalletCrypto_getAll {\n  walletCrypto_getAll {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}"): (typeof documents)["mutation WalletCrypto_create {\n  walletCrypto_create {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}\n\nquery WalletCrypto_getAll {\n  walletCrypto_getAll {\n    address\n    chainType\n    id\n    wallet_id\n  }\n}"];

export function graphql(source: string) {
  return (documents as any)[source] ?? {};
}

export type DocumentType<TDocumentNode extends DocumentNode<any, any>> = TDocumentNode extends DocumentNode<  infer TType,  any>  ? TType  : never;