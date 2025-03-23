// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract P2PEscrow {
    enum EscrowStatus { Pending, Completed, Disputed, Refunded }

    struct Escrow {
        address buyer;
        address seller;
        uint256 amount;
        EscrowStatus status;
    }

    address public admin;
    IERC20 public cUSD;
    mapping(uint256 => Escrow) public escrows;
    mapping(uint256 => address) public arbitrators;
    uint256 public escrowCount;

    event EscrowCreated(uint256 indexed escrowId, address buyer, address seller, uint256 amount);
    event EscrowCompleted(uint256 indexed escrowId);
    event EscrowDisputed(uint256 indexed escrowId);
    event EscrowRefunded(uint256 indexed escrowId);
    event ArbitratorAssigned(uint256 indexed escrowId, address arbitrator);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    modifier onlyBuyer(uint256 _escrowId) {
        require(msg.sender == escrows[_escrowId].buyer, "Only buyer can perform this action");
        _;
    }

    modifier onlySeller(uint256 _escrowId) {
        require(msg.sender == escrows[_escrowId].seller, "Only seller can perform this action");
        _;
    }

    modifier onlyArbitrator(uint256 _escrowId) {
        require(msg.sender == arbitrators[_escrowId], "Only assigned arbitrator can perform this action");
        _;
    }

    constructor(address _cUSD) {
        admin = msg.sender;
        cUSD = IERC20(_cUSD);
    }

    function createEscrow(address _seller, uint256 _amount) external {
        require(_amount > 0, "Amount must be greater than zero");
        require(cUSD.transferFrom(msg.sender, address(this), _amount), "Token transfer failed");

        uint256 escrowId = escrowCount++;
        escrows[escrowId] = Escrow({
            buyer: msg.sender,
            seller: _seller,
            amount: _amount,
            status: EscrowStatus.Pending
        });

        emit EscrowCreated(escrowId, msg.sender, _seller, _amount);
    }

    function releaseFunds(uint256 _escrowId) external onlyBuyer(_escrowId) {
        Escrow storage escrow = escrows[_escrowId];
        require(escrow.status == EscrowStatus.Pending, "Escrow is not pending");

        escrow.status = EscrowStatus.Completed;
        require(cUSD.transfer(escrow.seller, escrow.amount), "Transfer to seller failed");

        emit EscrowCompleted(_escrowId);
    }

    function raiseDispute(uint256 _escrowId) external onlyBuyer(_escrowId) {
        Escrow storage escrow = escrows[_escrowId];
        require(escrow.status == EscrowStatus.Pending, "Escrow is not pending");

        escrow.status = EscrowStatus.Disputed;
        emit EscrowDisputed(_escrowId);
    }

    function assignArbitrator(uint256 _escrowId, address _arbitrator) external onlyAdmin {
        arbitrators[_escrowId] = _arbitrator;
        emit ArbitratorAssigned(_escrowId, _arbitrator);
    }

    function resolveDispute(uint256 _escrowId, bool releaseToSeller) external onlyArbitrator(_escrowId) {
        Escrow storage escrow = escrows[_escrowId];
        require(escrow.status == EscrowStatus.Disputed, "Escrow is not in dispute");

        if (releaseToSeller) {
            require(cUSD.transfer(escrow.seller, escrow.amount), "Transfer to seller failed");
            escrow.status = EscrowStatus.Completed;
            emit EscrowCompleted(_escrowId);
        } else {
            require(cUSD.transfer(escrow.buyer, escrow.amount), "Refund to buyer failed");
            escrow.status = EscrowStatus.Refunded;
            emit EscrowRefunded(_escrowId);
        }
    }
}
