export type IBank = {
  id: number;
  name: string;
  code: string;
  slug: string;
  created_at: string;
  updated_at: string;
  longcode: string;
  gateway: string;
  pay_with_bank: number;
  active: number;
  country: string;
  currency: string;
  type: string;
  is_deleted: number;
};
