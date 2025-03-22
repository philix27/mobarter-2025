import { useMutation } from "@apollo/client";
import {
  Auth_LoginInput,
  Auth_LoginResponse,
  Auth_ResetPasswordInput,
  Auth_LoginDocument,
  Auth_ResetPasswordDocument,
  Auth_SendEmailOtpDocument,
  Auth_VerifyEmailOtpDocument,
  Auth_CreateAccountDocument,
  Mutation,
  MutationAuth_SendEmailOtpArgs,
  MutationAuth_VerifyEmailOtpArgs,
  MutationAuth_CreateAccountArgs,
} from "../__generated__/graphql";

type Input<T> = { input: T };
// type Response<T, K extends keyof T> = {K: T[K]}
// type Keys = "id" | "name" | "email";

type Response<V, K extends keyof V> = {
  [key in K]: V[K];
};

type WrappedResponse<K extends keyof Mutation> = Response<Mutation, K>;
export const useAuthLogin = () =>
  useMutation<  WrappedResponse<"auth_login">, Auth_LoginInput>(
    Auth_LoginDocument
  );

export const useAuth_resetPassword = () =>
  useMutation<
    { auth_resetPassword: Mutation["auth_resetPassword"] },
    Input<Auth_ResetPasswordInput>
  >(Auth_ResetPasswordDocument);

export const useAuth_sendEmailOtp = () =>
  useMutation<
    WrappedResponse<"auth_sendEmailOtp">,
    MutationAuth_SendEmailOtpArgs
  >(Auth_SendEmailOtpDocument);

export const useAuth_verifyEmailOtp = () =>
  useMutation<
    WrappedResponse<"auth_verifyEmailOtp">,
    MutationAuth_VerifyEmailOtpArgs
  >(Auth_VerifyEmailOtpDocument);

export const useAuth_CreateAccount = () =>
  useMutation<
    WrappedResponse<"auth_createAccount">,
    MutationAuth_CreateAccountArgs
  >(Auth_CreateAccountDocument);
