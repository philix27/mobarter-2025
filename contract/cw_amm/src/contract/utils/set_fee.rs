use crate::state::{
    ADMIN, SWAP_FEE,
};
use cosmwasm_std::{
    DepsMut, MessageInfo, Response,
    StdResult,
};


pub fn set_fee(deps: DepsMut, info: MessageInfo, new_fee: u128) -> StdResult<Response> {
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
