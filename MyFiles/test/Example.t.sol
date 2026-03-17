// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Example.sol";

contract ExampleTest is Test {
    A public a;
    B public b;

    function setUp() public {
        b = new B();
        a = new A(address(b));
    }

    function testExample() public {
        a.callB{value: 1.5 ether}();
        assertEq(address(a).balance, 0.5 ether);
        assertEq(address(b).balance, 1 ether);
        
        assertEq(a.errorsCount(), 0);
        assertEq(b.x(), 15);
    }
}
