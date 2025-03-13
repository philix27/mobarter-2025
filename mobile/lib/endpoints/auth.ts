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

export const useAuthLogin = () => {
  const [mutate, { data, loading, error }] = useMutation<
    Auth_LoginResponse,
    Auth_LoginInput
  >(Auth_LoginDocument);

  return { mutate, data, isLoading: loading, error };
};

export const useAuth_resetPassword = () => {
  const [mutate, { data, loading, error }] = useMutation<
    Auth_ResetPasswordResponse,
    Auth_ResetPasswordInput
  >(Auth_ResetPasswordDocument);

  return { mutate, data, isLoading: loading, error };
};

export const useAuth_sendEmailOtp = () => {
  const [mutate, { data, loading, error }] = useMutation<
    Auth_SendEmailOtpResponse,
    Auth_SendEmailOtpInput
  >(Auth_SendEmailOtpDocument);

  return { mutate, data, isLoading: loading, error };
};

export const useAuth_verifyEmailOtp = () => {
  const [mutate, { data, loading, error }] = useMutation<
    Auth_VerifyOtpResponse,
    Auth_VerifyEmailOtpInput
  >(Auth_VerifyEmailOtpDocument);

  return { mutate, data, isLoading: loading, error };
};

export const useAuth_CreateAccount = () => {
  const [mutate, { data, loading, error }] = useMutation<
    Auth_CreateAccountResponse,
    Auth_CreateAccountInput
  >(Auth_CreateAccountDocument);

  return { mutate, data, isLoading: loading, error };
};
