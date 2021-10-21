// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Array {
  uint[3] public array = [1, 2, 3];
  uint[] public dynArray;

  function  setArrayValues(uint a, uint b, uint c) public{
    array[0] = a;
    array[1] = b;
    array[2] = c;
  }

  function getArrayLength() public view returns(uint) {
    return array.length;
  }

  function addElement(uint item) public {
    dynArray.push(item);
  }

  function newArray() public {
    uint[] memory arr = new uint[](3);
    arr[0] = 8;
    arr[1] = 3;
    arr[2] = 3;
    dynArray = arr;
  }
}
// Note that increasing the length of a storage array by calling push() has constant gas costs because storage is

// zero-initialized, while decreasing the length by calling pop() has a cost that depends on the “size” of the

// element being removed.

// since 0.6 array.length is read only