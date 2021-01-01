// SPDX-License-Identifier: GPL-3.0

// A smart contract written in Solidity that adds two numbers together and returns the result.
// Author: Andrew Jarombek
// Date: 1/1/2021

pragma solidity >=0.7.0 <0.9.0;

contract Addition {
    uint m = 12;
    uint d = 31;

    function add() public view returns(uint) {
        return m + d;
    }
}