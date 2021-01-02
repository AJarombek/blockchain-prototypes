/*
 * A migration which creates the Addition contract.
 * Author: Andrew Jarombek
 * Date: 1/2/2020
 */

const Addition = artifacts.require("./Addition.sol");

module.exports = function(deployer) {
    deployer.deploy(Addition);
}