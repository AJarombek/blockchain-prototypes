/*
 * Test the Addition contract.
 * Author: Andrew Jarombek
 * Date: 1/2/2021
 */

const Addition = artifacts.require("./Addition.sol");

contract("Addition", () => {
  it("should return 43.", async () => {
    const additionInstance = await Addition.deployed();

    const value = await additionInstance.add.call();
    assert.equal(value, 43, "The value does not exist as expected.");
  });
});
