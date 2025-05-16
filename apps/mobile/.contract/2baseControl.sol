// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Ballot
 * @dev Implements voting process along with vote delegation
 */
contract ControlStructures {
    error AfterHours(uint256 time);

    function fizzBuzz(uint256 _number) public pure returns (string memory) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            return "FizzBuzz";
        }

        if (_number % 3 == 0) {
            return "Fizz";
        }

        if (_number % 5 == 0) {
            return "Buzz";
        }

        return "Splat";
    }

    function doNotDisturb(uint256 _time) public pure returns (string memory) {
        if (_time >= 2400) {
            assert(false); // Triggers a panic
        }

        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time); // Custom error
        }

        if (_time >= 1200 && _time <= 1259) {
            revert("At lunch!"); // Revert with message
        }

        if (_time >= 800 && _time <= 1199) {
            return "Morning!";
        } else if (_time >= 1300 && _time <= 1799) {
            return "Afternoon!";
        } else if (_time >= 1800 && _time <= 2200) {
            return "Evening!";
        }

        return "Invalid time"; // Fallback case (not strictly needed)
    }
}
