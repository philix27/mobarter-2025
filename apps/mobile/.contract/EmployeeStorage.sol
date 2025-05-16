// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeStorage {
    // Custom error for exceeding allowed shares
    error TooManyShares(uint resultingShares);

    // State variables
    string public name;            // Public name of the employee
    uint256 public idNumber;       // Public ID, any number up to 2^256 - 1

    // Private, storage-optimized variables
    uint32 private shares;         // Shares: max 4.2 billion (more than enough)
    uint32 private salary;         // Salary: range 0 to 1,000,000 (fits in 20 bits)

    // Constructor to set initial values
    constructor(
        uint32 _shares,
        string memory _name,
        uint32 _salary,
        uint256 _idNumber
    ) {
        require(_salary <= 1_000_000, "Invalid salary range");
        shares = _shares;
        name = _name;
        salary = _salary;
        idNumber = _idNumber;
    }

    // Public function to view salary
    function viewSalary() public view returns (uint) {
        return salary;
    }

    // Public function to view shares
    function viewShares() public view returns (uint) {
        return shares;
    }

    // Public function to grant additional shares
    function grantShares(uint32 _newShares) public {
        if (_newShares > 5000) {
            revert("Too many shares");
        }

        uint256 updatedShares = shares + _newShares;

        if (updatedShares > 5000) {
            revert TooManyShares(updatedShares);
        }

        shares = uint32(updatedShares);
    }

    // Storage slot checker (advanced debugging tool)
    function checkForPacking(uint _slot) public view returns (uint r) {
        assembly {
            r := sload(_slot)
        }
    }

    /**
    * Warning: Anyone can use this function at any time!
    */
    function debugResetShares() public {
        shares = 1000;
    }
}
