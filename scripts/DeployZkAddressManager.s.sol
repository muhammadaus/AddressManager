// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ZkAddressManager.sol"; // Import the ZkAddressManager contract

contract ZkAddressManagerDeployer {
    // Event to notify when a new ZkAddressManager contract is deployed
    event ZkAddressManagerDeployed(address indexed zkAddressManager);

    // Function to deploy a new ZkAddressManager contract
    function deployZkAddressManager(address _verifierContract) external returns (address) {
        // Deploy the ZkAddressManager contract
        ZkAddressManager zkAddressManager = new ZkAddressManager(_verifierContract);
        
        // Emit an event with the address of the deployed contract
        emit ZkAddressManagerDeployed(address(zkAddressManager));
        
        // Return the address of the deployed contract
        return address(zkAddressManager);
    }
}