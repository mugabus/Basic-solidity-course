// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract ArrayofNumber{
    uint256 MyfavoriteNumber;

   //in this for us to use array we going to use the keyword struct create a person

   struct Person{
    //the person will have:
     uint256 FavoriteNumber;
     
   }

   function store(uint256 _favoriteNumber) public {
       MyfavoriteNumber=_favoriteNumber;
   }

   Person[] public Listofperson;


   function retrieve() public view returns(uint256){
    return MyfavoriteNumber;
   }

   function addPerson(uint256 _favoriteNumber) public {
    Listofperson.push(Person(_favoriteNumber));
   }

}