// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract helloWorld {
    string helloWorldContract;

    constructor() {
        // helloWorld = "hello from the world";
        console.log("constructor hello world");
    }

    // create a function that writes helloworld to the smart contract
    function writeHelloWorld(string memory _helloWorldContract) public{
        helloWorldContract = _helloWorldContract;
    }
    // create a function that reads helloworld to the smart contract and View functions in solidity do not require gas.
    function readHelloWorld() public view returns(string memory) {
        return helloWorldContract;
    }
}