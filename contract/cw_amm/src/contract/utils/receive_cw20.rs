use crate::state::{
    LP_TOKEN, TOKEN1, TOKEN1_RESERVE, TOKEN2, TOKEN2_RESERVE, TOTAL_LP_SUPPLY,
};
use cosmwasm_std::{
    to_json_binary, CosmosMsg, DepsMut, Env, MessageInfo, Response,
    StdResult,
};
use cw20::Cw20ReceiveMsg;

pub fn receive_cw20(
    deps: DepsMut,
    _env: Env,
    info: MessageInfo,
    msg: Cw20ReceiveMsg,
) -> StdResult<Response> {
    let sender = deps.api.addr_validate(&msg.sender)?;
    let token_address = info.sender;
    let amount = msg.amount;

    let token1 = TOKEN1.load(deps.storage)?;
    let token2 = TOKEN2.load(deps.storage)?;

    let lp_token = LP_TOKEN.load(deps.storage)?;

    let mut total_lp_supply = TOTAL_LP_SUPPLY.load(deps.storage)?;

    if token_address == token1 {
        let mut token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
        token1_reserve += amount;
        TOKEN1_RESERVE.save(deps.storage, &token1_reserve)?;
    } else if token_address == token2 {
        let mut token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;
        token2_reserve += amount;
        TOKEN2_RESERVE.save(deps.storage, &token2_reserve)?;
    } else {
        return Err(cosmwasm_std::StdError::generic_err("Invalid token"));
    }

    // Calculate LP tokens to mint
    let lp_tokens_to_mint = if total_lp_supply.is_zero() {
        amount // First liquidity provider gets equal LP tokens
    } else {
        amount * total_lp_supply / TOKEN1_RESERVE.load(deps.storage)? // Proportional minting
    };

    // Update total LP supply
    total_lp_supply += lp_tokens_to_mint;
    TOTAL_LP_SUPPLY.save(deps.storage, &total_lp_supply)?;

    // Mint LP tokens to sender
    let mint_msg: CosmosMsg = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: lp_token.to_string(),
        msg: to_json_binary(&cw20::Cw20ExecuteMsg::Mint {
            recipient: sender.to_string(),
            amount: lp_tokens_to_mint,
        })?,
        funds: vec![],
    });

    Ok(Response::new()
        .add_message(mint_msg)
        .add_attribute("action", "mint_lp")
        .add_attribute("amount", lp_tokens_to_mint.to_string()))
}
