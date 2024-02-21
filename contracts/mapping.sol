// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//in this file we are going to do the same like in the third.sol file but we are going to
// one more feature on it(mapping)
//this mapping doing to get the number just by typing the name

contract Mapping{
    uint256 Mynumber;
    string Myname;


    struct Animal{
        string Name;
        uint256 Number;
    }
    mapping(string => uint256) public FindNumByText;
    // we have just created a map called(FindNumByText) and this code(string => uint256) 
    //means that we will finding the number using the name but we need to update the addAnimal function

    Animal[] public ListofAnimals;


    function store(uint256 _number, string memory _name) public {
      Mynumber=_number; Myname=_name;
    
    
    }
   function retrieve() public view returns(uint256, string memory){
        return (Mynumber,Myname);
    }

    function addAnimal(uint256 _number,string memory _name) public {
       ListofAnimals.push(Animal(_name,_number));
       // here is the update 
       // this the line of codes below allow to get number back anytime u text the name
       FindNumByText[_name] =_number;
    }
}