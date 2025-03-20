use crate::state::{LP_TOKEN, TOKEN1, TOKEN1_RESERVE, TOKEN2, TOKEN2_RESERVE, TOTAL_LP_SUPPLY};
use cosmwasm_std::{to_json_binary, DepsMut, MessageInfo, Response, StdResult, Uint128};

pub fn remove_liquidity(
    deps: DepsMut,
    info: MessageInfo,
    lp_amount: Uint128,
) -> StdResult<Response> {
    let sender = info.sender;
    let token1 = TOKEN1.load(deps.storage)?;
    let token2 = TOKEN2.load(deps.storage)?;
    let lp_token = LP_TOKEN.load(deps.storage)?;

    let total_lp_supply = TOTAL_LP_SUPPLY.load(deps.storage)?;
    let token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
    let token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;

    if lp_amount > total_lp_supply {
        return Err(cosmwasm_std::StdError::generic_err("Not enough LP tokens"));
    }

    // Calculate amounts to return
    let token1_amount = lp_amount * token1_reserve / total_lp_supply;
    let token2_amount = lp_amount * token2_reserve / total_lp_supply;

    // Update reserves and LP supply
    let new_token1_reserve = token1_reserve - token1_amount;
    let new_token2_reserve = token2_reserve - token2_amount;
    let new_total_lp_supply = total_lp_supply - lp_amount;

    TOKEN1_RESERVE.save(deps.storage, &new_token1_reserve)?;
    TOKEN2_RESERVE.save(deps.storage, &new_token2_reserve)?;
    TOTAL_LP_SUPPLY.save(deps.storage, &new_total_lp_supply)?;

    // Burn LP tokens
    let burn_msg = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: lp_token.to_string(),
        msg: to_json_binary(&cw20::Cw20ExecuteMsg::Burn { amount: lp_amount })?,
        funds: vec![],
    });

    // Send tokens back to user
    let transfer_token1 = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: token1.to_string(),
        msg: to_json_binary(&cw20::Cw20ExecuteMsg::Transfer {
            recipient: sender.to_string(),
            amount: token1_amount,
        })?,
        funds: vec![],
    });

    let transfer_token2 = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: token2.to_string(),
        msg: to_json_binary(&cw20::Cw20ExecuteMsg::Transfer {
            recipient: sender.to_string(),
            amount: token2_amount,
        })?,
        funds: vec![],
    });

    Ok(Response::new()
        .add_messages(vec![burn_msg, transfer_token1, transfer_token2])
        .add_attribute("action", "remove_liquidity")
        .add_attribute("token1_amount", token1_amount.to_string())
        .add_attribute("token2_amount", token2_amount.to_string()))
}
