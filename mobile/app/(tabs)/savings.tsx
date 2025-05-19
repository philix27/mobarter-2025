import HeaderBar from '@/components/Header';
import PaymentsScreen from '@/features/payments';

export default function WriteScreen() {
  return (
    <>
      <HeaderBar title="Savings" />
      <PaymentsScreen />;
    </>
  );
}
