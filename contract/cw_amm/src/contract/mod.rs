mod utils;

use crate::msg::{ExecuteMsg, InstantiateMsg, QueryMsg};
use crate::state::{ADMIN, LP_TOKEN, SWAP_FEE, TOKEN1, TOKEN1_RESERVE, TOKEN2, TOKEN2_RESERVE};

use cosmwasm_std::{Binary, Deps, DepsMut, Env, MessageInfo, Response, StdResult, Uint128};

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
        } => utils::add_liquidity(deps, info, token1_amount, token2_amount),
        ExecuteMsg::RemoveLiquidity { lp_amount } => utils::remove_liquidity(deps, info, lp_amount),
        ExecuteMsg::Swap {
            token_in,
            amount_in,
        } => utils::swap(deps, info, token_in, amount_in),
        ExecuteMsg::SetFee { new_fee } => utils::set_fee(deps, info, new_fee),
        ExecuteMsg::Receive(msg) => utils::receive_cw20(deps, env, info, msg),
    }
}

pub fn query(deps: Deps, _env: Env, msg: QueryMsg) -> StdResult<Binary> {
    match msg {
        QueryMsg::GetPool {} => utils::query_pool(deps),
    }
}
