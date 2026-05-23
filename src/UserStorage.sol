// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.13;


//UserStorage라는 스마트 컨트랙트 만들겠다는 뜻, UserStorage=사용자 별로 값을 저장해주는 컨트랙트
contract UserStorage { 
  mapping(address => uint256) private values; 

  function setMyValue(uint256 _value) public{
    values[msg.sender] = _value;
  }

  function getMyValue() public view returns (uint256) {
    return values[msg.sender];
  }

  function getValueOf(address _user) public view returns (uint256) {
  return values[_user];
  }

}

