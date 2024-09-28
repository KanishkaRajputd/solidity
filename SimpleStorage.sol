// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //starting solidity version

contract SimpleStorage {
    //Basic types bool, int, uint ,address, byts
    uint256 public myFavrioteNumber; //it gets initialize with 0;

    function store (uint256 _fav_no) public virtual {
        myFavrioteNumber = _fav_no;
    }

    //two types of return fn by which you can return a value view, pure 
    function retrieve() public  view  returns (Person memory){
        return kanishka;
    }
   
}
