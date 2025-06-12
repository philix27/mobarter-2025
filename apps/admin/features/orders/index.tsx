import React from 'react'
import { DataTable } from './data-table';

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
  {
    header: 'header',
    id: 2,
    target: 'som',
    type: 'type',
    status: 'Pending',
    limit: '23',
    reviewer: 'John',
  },
];
export default function UsersComp() {
  return (
    <div className="@container/main flex flex-1 flex-col gap-2">
      <div className="flex flex-col gap-4 py-4 md:gap-6 md:py-6">
        <DataTable data={data} />
      </div>
    </div>
  );
}
