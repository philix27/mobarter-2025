import { useQuery } from '@tanstack/react-query';
import { InfoRow } from './Card';
import { client } from '@/lib/constants/thirdweb';

import { useActiveAccount } from 'thirdweb/react';
import { getUserEmail, getProfiles } from 'thirdweb/wallets/in-app';
import { TView } from '@/components';
import { shortenAddress } from 'thirdweb/utils';

const getEmailAndName = async () => {
  const email = await getUserEmail({ client });
  console.log('User email:', email);

  // Assuming you have access to the user's profile from social login
  const profile = await getProfiles({ client }); // Hypothetical function
  // const name = profile?.name;
  // console.log("User name:", name);
  return {
    email,
    emailx: profile[0].details.email,
    phone: profile[0].details.phone,
  };
};

export default function TWInfo() {
  const account = useActiveAccount();
  const { isLoading, data } = useQuery({
    queryKey: ['userThirdWeb'],
    queryFn: async () => {
      return getEmailAndName();
    },
  });
  if (isLoading) return <TView />;

  return (
    <>
      <InfoRow title="Email:" title2={data!.email!} />
      {data!.phone && <InfoRow title="Phone:" title2={data!.phone!} />}
      {account!.address! && (
        <InfoRow title="Address:" title2={shortenAddress(account!.address!)} />
      )}
    </>
  );
}
