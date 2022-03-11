
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract HelloWorld {
    string project;
    
        constructor(string memory _projectContract) {
        project = _projectContract;
        console.log("Deploying a hello world with projectContract:", _projectContract);
    }

    //create a function that writes project to the smart contract
    function writeproject(string memory _project) public{
        project = _project;
    }
    // create a function that reads project to the smart contract
    function readproject() public view returns(string memory) {
        return project;
    }
}
