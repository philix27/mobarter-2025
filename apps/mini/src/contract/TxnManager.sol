// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MobarterTXNManager is Ownable {
    mapping(address => bool) public supportedTokens;

    event TokenAdded(address indexed token);
    event TokenRemoved(address indexed token);
    event OwnerUpdated(address indexed oldOwner, address indexed newOwner);
    event PaymentReceived(
        address indexed from,
        address indexed token,
        uint256 amount,
        string txName,
        string payload
    );
    event Withdraw(address indexed token, uint256 amount, address indexed to);
    event TransactionManagerNameUpdated(string newName);

    constructor(address[] memory initialTokens) Ownable(msg.sender) {
        for (uint i = 0; i < initialTokens.length; i++) {
            supportedTokens[initialTokens[i]] = true;
            emit TokenAdded(initialTokens[i]);
        }
    }

    // Function to accept payments in supported tokens with metadata
    function pay(address token, uint256 amount, string calldata txName, string calldata payload) external {
        require(supportedTokens[token], "Unsupported token");
        require(amount > 0, "Amount must be greater than zero");

        bool success = IERC20(token).transferFrom(msg.sender, address(this), amount);
        require(success, "Token transfer failed");

        emit PaymentReceived(msg.sender, token, amount, txName, payload);
    }

    // Owner can withdraw collected tokens
    function withdraw(address token, uint256 amount, address to) external onlyOwner {
        require(to != address(0), "Invalid recipient");
        require(IERC20(token).transfer(to, amount), "Withdraw failed");
        emit Withdraw(token, amount, to);
    }

    // Unified function to add or remove supported tokens
    function updateSupportedToken(address token, bool status) external onlyOwner {
        require(token != address(0), "Invalid token");
        supportedTokens[token] = status;

        if (status) {
            emit TokenAdded(token);
        } else {
            emit TokenRemoved(token);
        }
    }

    // Custom owner update function with event
    function updateOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Invalid address");
        address oldOwner = owner();
        transferOwnership(newOwner);
        emit OwnerUpdated(oldOwner, newOwner);
    }
}
