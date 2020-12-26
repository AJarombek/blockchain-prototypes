// SPDX-License-Identifier: GPL-3.0

// A "Hello World" smart contract written in Solidity.
// Author: Andrew Jarombek
// Date: 12/26/2020

pragma solidity >=0.4.16 <0.9.0;

contract BasicContract {
    uint value;

    function set(uint x) public {
        value = x;
    }

    function get() public view returns (uint) {
        return value;
    }
}
