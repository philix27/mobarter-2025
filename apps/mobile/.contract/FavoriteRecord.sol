// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FavoriteRecords {
    // Custom error for unapproved album additions
    error NotApproved(string albumName);

    // Mapping to track approved album names
    mapping(string => bool) public approvedRecords;

    // Mapping to track user favorites: user => (albumName => isFavorite)
    mapping(address => mapping(string => bool)) public userFavorites;

    // Internal list of approved record names to enable iteration
    string[] private approvedNames;

    // Mapping to store user's favorite list (for enumeration)
    mapping(address => string[]) private userFavoriteList;

    constructor() {
        _addApproved("Thriller");
        _addApproved("Back in Black");
        _addApproved("The Bodyguard");
        _addApproved("The Dark Side of the Moon");
        _addApproved("Their Greatest Hits (1971-1975)");
        _addApproved("Hotel California");
        _addApproved("Come On Over");
        _addApproved("Rumours");
        _addApproved("Saturday Night Fever");
    }

    // Internal helper to add approved records and track them
    function _addApproved(string memory albumName) internal {
        approvedRecords[albumName] = true;
        approvedNames.push(albumName);
    }

    // Public function to get the list of all approved album names
    function getApprovedRecords() public view returns (string[] memory) {
        return approvedNames;
    }

    // Adds a record to sender's favorites if approved
    function addRecord(string memory albumName) public {
        if (!approvedRecords[albumName]) {
            revert NotApproved(albumName);
        }

        // Avoid duplicates
        if (!userFavorites[msg.sender][albumName]) {
            userFavorites[msg.sender][albumName] = true;
            userFavoriteList[msg.sender].push(albumName);
        }
    }

    // Returns the list of a user's favorite album names
    function getUserFavorites(address user) public view returns (string[] memory) {
        return userFavoriteList[user];
    }

    // Resets sender's favorites
    function resetUserFavorites() public {
        string[] storage favs = userFavoriteList[msg.sender];
        for (uint i = 0; i < favs.length; i++) {
            userFavorites[msg.sender][favs[i]] = false;
        }
        delete userFavoriteList[msg.sender];
    }
}
