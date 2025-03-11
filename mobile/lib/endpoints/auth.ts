import { gql, useMutation, useQuery } from "@apollo/client";
// import { Auth_LoginInput, Auth_LoginResponse } from "../__generated__";

const Auth_Login = gql`
  query BankAccount_getAll {
    bankAccount_getAll {
      id
      account_name
      account_no
      bank_name
    }
  }
`;

// const useAuthLogin = (input: Auth_LoginInput) => {
//   const [mutate, { data, loading, error }] = useMutation<
//     Auth_LoginResponse,
//     Auth_LoginInput
//   >(Auth_Login);

//   return { mutate, data, isLoading: loading, error };
// };

// function gave() {
//   const { mutate, data, isLoading } = useAuthLogin({
//     email: "",
//     password: "",
//   });
//   mutate({
//     variables: input,
//   });
// }
// function Hello() {
//   const { loading, error, data } = useQuery(GET_GREETING, {
//     variables: { language: "english" },
//   });
//   if (loading) return <p>Loading ...</p>;
//   return <h1>Hello {data.greeting.message}!</h1>;
// }
