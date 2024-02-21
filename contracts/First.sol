// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract SimpleStorageNumber {

    uint256  FavoriteNumber;//  here the FavoriteNumber is set to internal that means that is not visble to the pulic 
    //but if we want to set it visible to the public we can use public wiith betwwenn uint256 and FavoriteNumber
    //now it will be (uint256 public FavoriteNumber)

    

    function store(uint _favoriteNum) public {
        FavoriteNumber=_favoriteNum;
    }
    // so the store fuction store the value of the Favoritenumber or updating something on the blockchain and uodate
    //on the blochain cost gas 

    function retrieve () public view returns (uint256){
        return FavoriteNumber;
    }
    //and the retrieve function just going to read the state on the blockchain but doenot cost gas
}