use cosmwasm_std::{Addr, Uint128};
use cw_storage_plus::Item;

pub const TOKEN1_RESERVE: Item<Uint128> = Item::new("token1_reserve");
pub const TOKEN2_RESERVE: Item<Uint128> = Item::new("token2_reserve");

pub const ADMIN: Item<Addr> = Item::new("admin");
pub const SWAP_FEE: Item<u128> = Item::new("swap_fee"); // Fee in basis points (0.3% = 30)

pub const TOKEN1: Item<Addr> = Item::new("token1");  // Address of CW20 Token 1
pub const TOKEN2: Item<Addr> = Item::new("token2");  // Address of CW20 Token 2

pub const LP_TOKEN: Item<Addr> = Item::new("lp_token"); // LP Token Contract
pub const TOTAL_LP_SUPPLY: Item<Uint128> = Item::new("total_lp_supply");
