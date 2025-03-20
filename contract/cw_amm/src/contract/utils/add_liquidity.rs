use crate::state::{TOKEN1_RESERVE, TOKEN2_RESERVE};
use cosmwasm_std::{DepsMut, MessageInfo, Response, StdResult, Uint128};

pub fn add_liquidity(
    deps: DepsMut,
    _info: MessageInfo,
    token1_amount: Uint128,
    token2_amount: Uint128,
) -> StdResult<Response> {
    let mut token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
    let mut token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;

    token1_reserve += token1_amount;
    token2_reserve += token2_amount;

    TOKEN1_RESERVE.save(deps.storage, &token1_reserve)?;
    TOKEN2_RESERVE.save(deps.storage, &token2_reserve)?;

    Ok(Response::new().add_attribute("action", "add_liquidity"))
}
