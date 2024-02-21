// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Mapping{

    uint256 Mynumber;
    string Myname;

    struct Women{
       uint256 Number;
       string Name;
    }
    mapping(uint256 =>string) public FindTextByNumber;

        Women[] public  ListofWome;

    function store(uint256 _number, string memory _name) public {
        (Mynumber=_number,Myname=_name);
    }

    function retrieve() public view returns (uint256,string memory){
        return (Mynumber,Myname);
    }
    function addWomen(uint256 _number,string memory _name) public{
        ListofWome.push(Women(_number,_name));
        FindTextByNumber[_number]=_name;
    } 

}