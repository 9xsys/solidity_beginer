// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract messenger{
    string message;

    function sendMessage(string calldata _message) public{
        message = _message;
    }

    function getLength() public view returns(uint){
        return bytes(message).length;
    }
}