// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// 1. Local Variable
// Local variables are declared within a function and are only accessible within that function. 
// Their scope is limited, and their lifetime ends when the function execution is completed.

contract LocalVariableExample {
  function getDouble(uint value) public pure returns (uint) 
  {
    uint doubleValue = value * 2;
    return doubleValue;
  }
}


// 2. State Variable
// State variables are declared at the contract level and represent the contract’s state on the blockchain. 
// They are stored on the Ethereum network and are accessible within the entire contract.

contract StateVariableExample {
  uint public count = 0;
  function increment() public 
  {
    count += 1;
  }
}


// 3. Global Variable
// Global variables are special variables provided by the Solidity language. 
// They are available throughout the contract and provide information about the blockchain, transaction, and execution context.

contract GlobalVariableExample {
  event SenderAndValue(address sender, uint value);
  function getSenderAndValue() public payable 
  {
    address sender = msg.sender;
    uint value = msg.value;
    emit SenderAndValue(sender, value);
  }
}

// Variable Scope
// There are three types of variable scopes in Solidity:
// Public : Public variables are accessible from within the contract and can be accessed from external contracts as well. Solidity automatically generates a getter function for public state variables.
// Private : Private variables are only accessible within the contract they are defined in. They are not accessible from derived contracts or external contracts.
// internal : Internal variables are accessible within the contract they are defined in and derived from contracts. They are not accessible from external contracts.


contract VariableScopeExample {
  uint public publicVar = 1;
  uint private privateVar = 2;
  uint internal internalVar = 3;
  string public name ="Gulsher";
  
  function getPrivateVar() public view returns (uint) 
  {
    return privateVar;
  }
}
  
contract DerivedContract is VariableScopeExample {
  function getInternalVar() public view returns (uint) 
  {
    return internalVar;
  }
}