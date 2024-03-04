// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our version

contract SimpleStorage{
    
    //favouriteNumber gets initialized to 0 if no value is given
    
    uint256 public myFavouriteNumber; //0

    //uint256[] listOfFavouriteNumbers;
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // static array
    // Person[3] public listOfPeople; // []

    // dynamic array
    Person[] public listOfPeople; // []

    //abhi -> 45  // in a mapping the default value is 0
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
        // retrieve(); // it will cost more gas as the contract calls the function internally
    }

    

    // view, pure
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }


    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push( Person(_favouriteNumber, _name) );
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}