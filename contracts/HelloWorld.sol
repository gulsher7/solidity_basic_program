// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract HelloWorld {
  event ValueLogged(string message);
  string message;
  constructor() public {
     message = "Hello World";
  }

  
  function sayhello() view public returns (string memory){
     
            return message;
  }
}
