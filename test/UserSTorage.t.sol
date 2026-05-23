// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {UserStorage} from "../src/UserStorage.sol";

contract UserStorageTest is Test {
    UserStorage public userStorage;

    address public userA = address(1);
    address public userB = address(2);

    function setUp() public {
        userStorage = new UserStorage();
    }

    function test_SetMyValue() public {
        userStorage.setMyValue(10);
        assertEq(userStorage.getMyValue(), 10);
    }

    function test_DifferentUsersHaveDifferentValues() public {
        vm.prank(userA);
        userStorage.setMyValue(10);

        vm.prank(userB);
        userStorage.setMyValue(50);

        assertEq(userStorage.getValueOf(userA), 10);
        assertEq(userStorage.getValueOf(userB), 50);
    }

    function test_DefaultValueIsZero() public view {
        assertEq(userStorage.getValueOf(userA), 0);
    }
}