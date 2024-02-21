// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//in this we are going to use array to store strings

contract ArrayofText{

    string public MyName;

    struct Person{
        string Name;
    }
    Person[] public ListofName;

    function store(string memory _name) public {
        MyName=_name;
    }
    function retrieve() public view returns (string memory){
        return MyName;
    }
    function addPerson(string memory _name) public {
        ListofName.push(Person(_name));
    }
}