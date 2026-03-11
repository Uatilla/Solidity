// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {ValueTypes} from "../src/ValueTypes.sol";

contract ValueTypesTest is Test {
    ValueTypes vt;

    function setUp() public {
        vt = new ValueTypes();
    }

    function test_initial_values() public view {
        assertEq(vt.smallUint(), 255);
        assertEq(vt.maxUint(), type(uint256).max);
        assertEq(vt.smallInt(), 127);
        assertEq(vt.negativeInt(), -42);
        assertTrue(vt.isActive());
        assertEq(uint256(vt.facing()), 0); // North = 0
    }

    function test_log_values() public view {
        console2.log("maxUint =", vt.maxUint());
        console2.log("negativeInt =", vt.negativeInt());
    }
}
