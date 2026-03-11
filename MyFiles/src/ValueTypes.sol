// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract ValueTypes {
    uint8 public smallUint = 255;
    uint256 public maxUint = type(uint256).max;
    int8 public smallInt = 127;
    int256 public negativeInt = -42;

    bool public isActive = true;

    enum Direction {
        North,
        East,
        South,
        West
    }
    Direction public facing = Direction.North;
}
