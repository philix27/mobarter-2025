// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// Library: SillyStringUtils
library SillyStringUtils {
    struct Haiku {
        string line1;
        string line2;
        string line3;
    }

    function shruggie(string memory _input) internal pure returns (string memory) {
        return string.concat(_input, unicode" 🤷");
    }
}

/// Contract: ImportsExercise
contract ImportsExercise {
    using SillyStringUtils for string;

    // Public Haiku instance
    SillyStringUtils.Haiku public haiku;

    /// Save a haiku with 3 lines
    function saveHaiku(
        string memory _line1,
        string memory _line2,
        string memory _line3
    ) public {
        haiku = SillyStringUtils.Haiku(_line1, _line2, _line3);
    }

    /// Return the full Haiku struct
    function getHaiku() public view returns (SillyStringUtils.Haiku memory) {
        return haiku;
    }

    /// Return a copy of the haiku with line3 ending in 🤷
    function shruggieHaiku() public view returns (SillyStringUtils.Haiku memory) {
        return SillyStringUtils.Haiku({
            line1: haiku.line1,
            line2: haiku.line2,
            line3: haiku.line3.shruggie()
        });
    }
}
