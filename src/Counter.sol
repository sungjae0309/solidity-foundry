// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number; //숫자를 저장하는 상태 변수, 블록체인에 저장되는 값

    function setNumber(uint256 newNumber) public { //외부에서 숫자를 직접 변경할 수 있는 함수 
        number = newNumber;
    }

    function increment() public {
        number++; //현재 숫자를 1 증가 
    }

    function doubleIncrement() public {
    number += 2;
    }
}
