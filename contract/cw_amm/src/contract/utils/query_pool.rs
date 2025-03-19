use crate::msg::PoolResponse;
use crate::state::{TOKEN1_RESERVE, TOKEN2_RESERVE};
use cosmwasm_std::{to_json_binary, Binary, Deps, StdResult};

pub fn query_pool(deps: Deps) -> StdResult<Binary> {
    let token1_reserve = TOKEN1_RESERVE.load(deps.storage)?;
    let token2_reserve = TOKEN2_RESERVE.load(deps.storage)?;

    let res = PoolResponse {
        token1_reserve,
        token2_reserve,
    };
    to_json_binary(&res)
}
