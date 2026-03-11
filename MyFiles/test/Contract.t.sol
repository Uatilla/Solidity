pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Contract} from "../src/Contract.sol";

contract ContractTest is Test {
    Contract public myContract;

    function setUp() public {
        myContract = new Contract();
    }

    function testBools() public {
        assertEq(myContract.a(), true);
        assertEq(myContract.b(), false);
    }
}