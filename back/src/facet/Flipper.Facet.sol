// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../diamond/Diamond.Storage.Lib.sol";

contract FlipperFacet {
    using DiamondStorageLib for DiamondStorageLib.Storage;

    // cde4efa9
    function flip() public {
        DiamondStorageLib.Storage storage ds = DiamondStorageLib.getDiamondStorage();
        ds.value = !ds.value;
    }

    // 6d4ce63c
    function get() public view returns (bool) {
        DiamondStorageLib.Storage storage ds = DiamondStorageLib.getDiamondStorage();
        return ds.value;
    }
}
