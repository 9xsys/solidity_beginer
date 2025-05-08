// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract wallet{
    address private owner;
    
    constructor(){
        owner = msg.sender;
    }

    function deposit() public payable{}

    function getBalance() public view returns (uint256){
        return address(this).balance;
    }

    function withdraw(uint256 amount) public{
        require(msg.sender == owner, "Only Owner can perform this action");
        require(address(this).balance >= amount, "Not Enough Balance");
        payable(owner).transfer(amount);
    }
}