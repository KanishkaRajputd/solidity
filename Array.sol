// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //starting solidity version

contract arrayAndStruct {
    //Basic types bool, int, uint ,address, byts
    uint256  MyFavrioteNumber; //it gets initialize with 0;

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


    //two types of return fn by which you can return a value view, pure 
    function retrieve() public  view  returns (Person memory){
        return kanishka;
    }

//memory , calldata, storage;

//memory : if some string can be access for short time we and it's value can be manipulated 
//callData same as memory but in this that value can't be manipulated
//storage is kind of storing the public variable
    function addPerson (string memory _name , uint256 _fav_no) public {

        //_name = 'kanishka' //ex: memory
        listOfPersons.push(Person(_fav_no, _name));
        listOfPersons.pop();
        listOfPersons.push(kanishka);
    }
   
}
