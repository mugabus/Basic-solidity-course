// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//in this we are going to the array with string and number combned

contract ArrayofNumAndText{

    uint256 public Mynumber;
    string public Myname;
    
    struct Person{
        uint256 Number;
        string Name;
    }
    
    Person[] public ListofPerson;

    function store(uint256 _number, string memory _name) public {
        Mynumber=_number; Myname=_name;
        ListofPerson.push(Person(_number,_name));
    }

    function retrieve() public view returns(uint256, string memory){
        return (Mynumber,Myname);
    }
    function addPerson(uint256 _number, string memory _name)public {
        ListofPerson.push(Person(_number,_name));
    }
   
}