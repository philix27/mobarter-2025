import HeaderBar from '@/components/Header';
import SettingsScreen from '@/features/settings';

export default function Page() {
  return (
    <>
      <HeaderBar title="Settings" showBackBtn backTo="Home" />
      <SettingsScreen />
    </>
  );
}
