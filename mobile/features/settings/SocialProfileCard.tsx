import React from 'react';
import { View, StyleSheet, Image } from 'react-native';
import { useSocialProfiles } from 'thirdweb/react';
import { ThirdwebClient } from 'thirdweb';
import { resolveScheme } from 'thirdweb/storage';
import { SocialProfile } from 'thirdweb/social';
import { TText, TView } from '@/components';

interface SocialProfileCardProps {
  address: string | undefined;
  client: ThirdwebClient;
}

export function SocialProfilesList({
  client,
  address,
}: SocialProfileCardProps) {
  const profiles = useSocialProfiles({
    client,
    address,
  });

  if (profiles.isLoading) {
    return <TText type="default">Loading...</TText>;
  }

  return profiles.data?.length ? (
    profiles.data?.map(profile => (
      <SocialProfileCard
        profile={profile}
        client={client}
        key={profile.type + profile.name}
      />
    ))
  ) : (
    <TText type="default">No social profiles found</TText>
  );
}

export function SocialProfileCard({
  profile,
  client,
}: {
  profile: SocialProfile | undefined;
  client: ThirdwebClient;
}) {
  if (!profile) return null;
  return (
    <TView style={styles.card}>
      <View style={styles.contentContainer}>
        {profile.avatar && (
          <Image
            source={{ uri: resolveScheme({ client, uri: profile.avatar }) }}
            style={styles.avatar}
          />
        )}
        <View style={styles.tableContainer}>
          <TText type="defaultSemiBold">{profile.name}</TText>
          <TText type="default">{profile.bio || '-'}</TText>
          <TText type="md">{profile.type}</TText>
        </View>
      </View>
    </TView>
  );
}

const styles = StyleSheet.create({
  card: {
    borderRadius: 8,
    padding: 16,
    marginVertical: 8,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.23,
    shadowRadius: 2.62,
    elevation: 4,
  },
  contentContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  avatar: {
    width: 60,
    height: 60,
    borderRadius: 30,
    marginRight: 16,
  },
  tableContainer: {
    flex: 1,
    flexDirection: 'column',
    alignItems: 'flex-start',
  },
});
