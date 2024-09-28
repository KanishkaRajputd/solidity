pragma solidity ^0.8.18; //starting solidity version

import {SimpleStorage} from "./SimpleStorage.sol";


contract addFiveStorage  is SimpleStorage {
    //+5 
    //override
    //virtual override

function store (uint256 _newNo) public override {
    myFavrioteNumber = _newNo + 5;
}
 
}
