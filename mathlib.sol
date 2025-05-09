// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mathLib{
    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function mul(uint a, uint b) public pure returns(uint){
        return a * b;
    }

    function hashPair(uint a, uint b) public pure returns (bytes32){
        return keccak256(abi.encodePacked(a,b));
    }

    
}