// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our version

contract SimpleStorage{
    // Basic  Types : boolean, uint, int, address, bytes
    
    //favouriteNumber gets initialized to 0 if no value is given
    uint256 public favouriteNumber; //0

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        // retrieve(); // it will cost more gas as the contract calls the function internally
    }

    // function getFavouriteNumber() public view returns(uint256){
    //     return favouriteNumber;
    // }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
}