use crate::state::{SWAP_FEE, TOKEN1_RESERVE, TOKEN2_RESERVE};
use cosmwasm_std::{DepsMut, MessageInfo, Response, StdResult, Uint128};

pub fn swap(
    deps: DepsMut,
    _info: MessageInfo,
    token_in: String,
    amount_in: Uint128,
) -> StdResult<Response> {
    let mut token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
    let mut token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;
    let swap_fee = SWAP_FEE.load(deps.storage)?;

    let (input_reserve, output_reserve) = if token_in == "token1" {
        (token1_reserve, token2_reserve)
    } else {
        (token2_reserve, token1_reserve)
    };

    let amount_in_with_fee = amount_in.u128() * (1000 - swap_fee) / 1000;
    let amount_out =
        output_reserve.u128() * amount_in_with_fee / (input_reserve.u128() + amount_in_with_fee);

    if token_in == "token1" {
        token1_reserve += amount_in;
        token2_reserve -= Uint128::from(amount_out);
    } else {
        token2_reserve += amount_in;
        token1_reserve -= Uint128::from(amount_out);
    }

    TOKEN1_RESERVE.save(deps.storage, &token1_reserve)?;
    TOKEN2_RESERVE.save(deps.storage, &token2_reserve)?;

    Ok(Response::new()
        .add_attribute("action", "swap")
        .add_attribute("amount_out", amount_out.to_string()))
}
