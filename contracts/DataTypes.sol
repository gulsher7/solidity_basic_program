// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DataTypes {
  bool public boolValue = true; //
  uint public int_val = 10;//
  string public name = "Gulsher";
  bytes public characters = "abc";
  enum my_enum {_intellect, _developer}

  function Enum() public pure returns(my_enum){
    return my_enum._intellect;
  }
}
