// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/ZkAddressManager.sol"; // Import the ZkAddressManager contract

contract DeployZkAddressManager is Script {
    function run() external {
        // Start broadcasting the transaction
        vm.startBroadcast();

        // Deploy the Verifier contract
        Verifier verifier = new Verifier();

        // Deploy the ZkAddressManager contract with the address of the Verifier
        ZkAddressManager zkAddressManager = new ZkAddressManager(address(verifier));

        // Stop broadcasting the transaction
        vm.stopBroadcast();

        // Log the addresses of the deployed contracts
        console.log("Verifier deployed at:", address(verifier));
        console.log("ZkAddressManager deployed at:", address(zkAddressManager));
    }
}