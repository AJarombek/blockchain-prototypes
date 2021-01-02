// SPDX-License-Identifier: MIT

// Created by truffle when running 'truffle unbox react'.  Comments were added by me.  This contract manages statuses
// of deployed smart contracts and updates to them.  It is required to use truffles migration feature.
// Author: Andrew Jarombek
// Date: 1/2/2021

pragma solidity >=0.4.21 <0.9.0;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  // Custom modifiers are used to add pre-requisite logic to functions.  Adding this 'restricted' modifier to a function
  // ensures that the sender to the smart contract is also the person who created the smart contract.
  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor() public {
    owner = msg.sender;
  }

  // The 'restricted' modifier is applied to this function.
  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
