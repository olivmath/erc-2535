// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/facet/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);
        flipper = new Flipper(true);
        console.log(address(flipper));
        vm.stopBroadcast();
    }
}
