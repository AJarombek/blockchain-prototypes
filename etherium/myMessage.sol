// SPDX-License-Identifier: GPL-3.0

// A smart contract written in Solidity that publishes a message that only I can create.
// Author: Andrew Jarombek
// Date: 12/26/2020

pragma solidity >=0.7.0 <0.9.0;

contract myMessage {
    // The public keyword creates a getter function for the state variable 'creator'.  In this case, the function is:
    // function creator() external view returns (address) { return creator; }
    address public creator;

    event SentMessage(address from, address to, string message);

    constructor() {
        // msg.sender is the address where the current function call originated from.  In this case, msg.sender will be
        // whoever created the smart contract.
        creator = msg.sender;
    }

    function sendMessage(address receiver, string message) public {
        require(msg.sender == creator);
        emit(msg.sender, receiver, message);
    }
}
