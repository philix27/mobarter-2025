// import { DataTable } from '@/components/data-table';
import Wrapper from '@/components/wrapper';
import UsersComp from '@/features/orders';

// import data from "./data.json"
const data: {
  header: string;
  id: number;
  target: string;
  type: string;
  status: string;
  limit: string;
  reviewer: string;
}[] = [
  {
    header: 'header',
    id: 0,
    target: 'som',
    type: 'type',
    status: 'Pending',
    limit: '23',
    reviewer: 'John',
  },
];

export default function Page() {
  return (
    <Wrapper title="Orders">
      <UsersComp />
    </Wrapper>
  );
}
