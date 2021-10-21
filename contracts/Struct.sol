// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

struct Hero {
  string name;
  uint8 age;
  string class;
  address addr;
}

contract Struct{
  Hero public michou;

  constructor(string memory _name, uint8 _age, string memory _class) {
    // Hero memory newHero = Hero({
    //   name: _name,
    //   age: _age,
    //   class: _class,
    //   addr: msg.sender
    // });
    // michou = newHero;
    michou.name = _name;
    michou.age = _age;
    michou.class = _class;
  }

  function changeHero(string memory _name, uint8 _age, string memory _class, address _addr) public{
    michou = Hero({
      name: _name,
      age: _age,
      class: _class,
      addr: _addr
    });
  }
}