// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our version

contract SimpleStorage{
    // Basic  Types : boolean, uint, int, address, bytes
    
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


    // Person public abhi = Person({favouriteNumber: 7, name: "Abhi"});
    // Person public adi = Person({favouriteNumber: 7, name: "Adi"});
    // Person public abhay = Person({favouriteNumber: 7, name: "Abhay"});

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
        // retrieve(); // it will cost more gas as the contract calls the function internally
    }

    // function getFavouriteNumber() public view returns(uint256){
    //     return favouriteNumber;
    // }

    // view, pure
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    // calldata, memory, storage
    //calldata is temporary variable that cannot be modified
    //memory is temporary variable that can be modified
    //storage is permanent variable that can be modified

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person memory newPerson = Person(_favouriteNumber, _name);
        // listOfPeople.push(newPerson);

        listOfPeople.push( Person(_favouriteNumber, _name) );
    }
}