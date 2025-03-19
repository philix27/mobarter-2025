use cosmwasm_std::Uint128;
use cw20::Cw20ReceiveMsg;
use schemars::JsonSchema;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq, JsonSchema)]
pub struct InstantiateMsg {
    pub token1: String,
    pub token2: String,
    pub lp_token: String, // LP Token Address
}

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq, JsonSchema)]
pub enum ExecuteMsg {
    AddLiquidity {
        token1_amount: Uint128,
        token2_amount: Uint128,
    },
    RemoveLiquidity {
        lp_amount: Uint128,
    },
    Swap {
        token_in: String,
        amount_in: Uint128,
    },
    SetFee {
        new_fee: u128,
    },
    Receive(Cw20ReceiveMsg),
}

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq, JsonSchema)]
pub enum QueryMsg {
    GetPool {},
}

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq, JsonSchema)]
pub struct PoolResponse {
    pub token1_reserve: Uint128,
    pub token2_reserve: Uint128,
}
