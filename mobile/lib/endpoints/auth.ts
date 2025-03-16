import { useMutation } from "@apollo/client";
import {
  Auth_LoginInput,
  Auth_LoginResponse,
  Auth_ResetPasswordInput,
  Auth_ResetPasswordResponse,
  Auth_SendEmailOtpResponse,
  Auth_SendEmailOtpInput,
  Auth_VerifyEmailOtpInput,
  Auth_VerifyOtpResponse,
  Auth_CreateAccountInput,
  Auth_CreateAccountResponse,
  Auth_LoginDocument,
  Auth_ResetPasswordDocument,
  Auth_SendEmailOtpDocument,
  Auth_VerifyEmailOtpDocument,
  Auth_CreateAccountDocument,
} from "../__generated__/graphql";

type Input<T> = { input: T };

export const useAuthLogin = () =>
  useMutation<Auth_LoginResponse, Input<Auth_LoginInput>>(Auth_LoginDocument);

export const useAuth_resetPassword = () =>
  useMutation<Auth_ResetPasswordResponse, Input<Auth_ResetPasswordInput>>(
    Auth_ResetPasswordDocument
  );

export const useAuth_sendEmailOtp = () =>
  useMutation<Auth_SendEmailOtpResponse, Input<Auth_SendEmailOtpInput>>(
    Auth_SendEmailOtpDocument
  );

export const useAuth_verifyEmailOtp = () =>
  useMutation<Auth_VerifyOtpResponse, Input<Auth_VerifyEmailOtpInput>>(
    Auth_VerifyEmailOtpDocument
  );

export const useAuth_CreateAccount = () =>
  useMutation<Auth_CreateAccountResponse, Input<Auth_CreateAccountInput>>(
    Auth_CreateAccountDocument
  );
