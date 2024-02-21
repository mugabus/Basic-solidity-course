// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract SimpleStorageText{

    string public  Name;

    function store(string memory _name) public {
       Name=_name;
    }

    function retrieve() public  view returns (string memory){
        return Name;
    }
    
}