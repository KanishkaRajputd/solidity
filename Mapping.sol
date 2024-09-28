// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //starting solidity version

contract mappingFN {
    //Basic types bool, int, uint ,address, byts
    uint256 public MyFavrioteNumber; //it gets initialize with 0;

    // uint256[] listOfFavNumbers;


//we can ceate types by struct keywork;
    struct Person {
        uint256 favNumber;
        string name;
    }

    Person public kanishka = Person({ favNumber: 2, name:"Kanishka Rajput"});
    
    // static array with max lenght of 3;
    // Person[3] public listOfPersons;

     //dynamic array
    Person[] public listOfPersons; //it gets initialize with [];

    mapping(string => uint256) public nameToFavNumber;

    // function store (uint256 _fav_no) public{
    //     MyFavrioteNumber = _fav_no;
    // }

    //two types of return fn by which you can return a value view, pure 
    function retrieve() public  view  returns (Person memory){
        return kanishka;
    }

    function addPerson (string memory _name , uint256 _fav_no) public {
        nameToFavNumber[_name] = _fav_no;
    }
   
}
