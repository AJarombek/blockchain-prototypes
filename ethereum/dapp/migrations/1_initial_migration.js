/*
 * The initial migration executed by truffle.  It creates the Migrations contract.  This file is generated by truffle
 * and commented by me.
 * Author: Andrew Jarombek
 * Date: 1/2/2020
 */

var Migrations = artifacts.require("./Migrations.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};