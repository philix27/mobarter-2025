use crate::msg::{ExecuteMsg, InstantiateMsg, PoolResponse, QueryMsg};
use crate::state::{
    ADMIN, LP_TOKEN, SWAP_FEE, TOKEN1, TOKEN1_RESERVE, TOKEN2, TOKEN2_RESERVE, TOTAL_LP_SUPPLY,
};
use cosmwasm_std::{
    entry_point, to_binary, Addr, Binary, CosmosMsg, Deps, DepsMut, Env, MessageInfo, Response,
    StdResult, Uint128,
};
use cw20::Cw20ReceiveMsg;

// const FEE_PERCENT: u128 = 3; // 0.3% fee
pub fn instantiate(
    deps: DepsMut,
    _env: Env,
    info: MessageInfo,
    msg: InstantiateMsg,
) -> StdResult<Response> {
    TOKEN1.save(deps.storage, &deps.api.addr_validate(&msg.token1)?)?;
    TOKEN2.save(deps.storage, &deps.api.addr_validate(&msg.token2)?)?;

    TOKEN1_RESERVE.save(deps.storage, &Uint128::zero())?;
    TOKEN2_RESERVE.save(deps.storage, &Uint128::zero())?;

    ADMIN.save(deps.storage, &info.sender)?;
    SWAP_FEE.save(deps.storage, &30)?; // Default 0.3% fee

    LP_TOKEN.save(deps.storage, &deps.api.addr_validate(&msg.lp_token)?)?;

    Ok(Response::new().add_attribute("method", "instantiate"))
}

pub fn execute(deps: DepsMut, env: Env, info: MessageInfo, msg: ExecuteMsg) -> StdResult<Response> {
    match msg {
        ExecuteMsg::AddLiquidity {
            token1_amount,
            token2_amount,
        } => add_liquidity(deps, info, token1_amount, token2_amount),
        ExecuteMsg::RemoveLiquidity { lp_amount } => remove_liquidity(deps, info, lp_amount),
        // ExecuteMsg::RemoveLiquidity { share } => remove_liquidity(deps, info, share),
        ExecuteMsg::Swap {
            token_in,
            amount_in,
        } => swap(deps, info, token_in, amount_in),
        ExecuteMsg::SetFee { new_fee } => set_fee(deps, info, new_fee),
        ExecuteMsg::Receive(msg) => receive_cw20(deps, env, info, msg),
    }
}

pub fn query(deps: Deps, _env: Env, msg: QueryMsg) -> StdResult<Binary> {
    match msg {
        QueryMsg::GetPool {} => query_pool(deps),
    }
}

fn set_fee(deps: DepsMut, info: MessageInfo, new_fee: u128) -> StdResult<Response> {
    let admin = ADMIN.load(deps.storage)?;
    if info.sender != admin {
        return Err(cosmwasm_std::StdError::generic_err("Unauthorized"));
    }

    if new_fee > 100 {
        // Ensure fee is at most 1%
        return Err(cosmwasm_std::StdError::generic_err("Fee too high"));
    }

    SWAP_FEE.save(deps.storage, &new_fee)?;
    Ok(Response::new()
        .add_attribute("action", "set_fee")
        .add_attribute("new_fee", new_fee.to_string()))
}

fn receive_cw20(
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
        msg: to_binary(&cw20::Cw20ExecuteMsg::Mint {
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

fn add_liquidity(
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

// fn remove_liquidity(deps: DepsMut, _info: MessageInfo, share: Uint128) -> StdResult<Response> {
//     let mut token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
//     let mut token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;

//     let token1_out = token1_reserve * share / Uint128::from(100u128);
//     let token2_out = token2_reserve * share / Uint128::from(100u128);

//     token1_reserve -= token1_out;
//     token2_reserve -= token2_out;

//     TOKEN1_RESERVE.save(deps.storage, &token1_reserve)?;
//     TOKEN2_RESERVE.save(deps.storage, &token2_reserve)?;

//     Ok(Response::new().add_attribute("action", "remove_liquidity"))
// }

fn remove_liquidity(deps: DepsMut, info: MessageInfo, lp_amount: Uint128) -> StdResult<Response> {
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
        msg: to_binary(&cw20::Cw20ExecuteMsg::Burn { amount: lp_amount })?,
        funds: vec![],
    });

    // Send tokens back to user
    let transfer_token1 = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: token1.to_string(),
        msg: to_binary(&cw20::Cw20ExecuteMsg::Transfer {
            recipient: sender.to_string(),
            amount: token1_amount,
        })?,
        funds: vec![],
    });

    let transfer_token2 = cosmwasm_std::CosmosMsg::Wasm(cosmwasm_std::WasmMsg::Execute {
        contract_addr: token2.to_string(),
        msg: to_binary(&cw20::Cw20ExecuteMsg::Transfer {
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

fn swap(
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

fn query_pool(deps: Deps) -> StdResult<Binary> {
    let token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
    let token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;

    let res = PoolResponse {
        token1_reserve,
        token2_reserve,
    };
    to_binary(&res)
}
