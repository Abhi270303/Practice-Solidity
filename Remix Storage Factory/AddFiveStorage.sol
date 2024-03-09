// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

// inherits everything from SimpleStorage
contract AddFiveStorage is SimpleStorage {

    // virtual : indicates that function is overrideable
    // override : the function which needs to be changed
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}