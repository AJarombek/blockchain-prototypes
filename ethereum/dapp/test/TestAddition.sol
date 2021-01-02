// SPDX-License-Identifier: GPL-3.0

// Test the addition smart contract.
// Author: Andrew Jarombek
// Date: 1/2/2021

pragma solidity >=0.4.21 <0.7.0;

import "truffle/Assert.sol";
import "../contracts/Addition.sol";

contract TestAddition {

  function testValue() public {
    Addition addition = Addition();

    uint expected = 43;
    uint actual = addition.add();

    Assert.equal(actual, expected, "The value does not exist as expected.");
  }

}
