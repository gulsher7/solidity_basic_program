// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Operators {
    /* 
    their are 6 types of opeartors 
    1. Arithmetic Operators
    2. Relational Operators
    3. Logical Operators
    4. Bitwise Operators
    5. Assignment operators
    6. Conditional Operator
    */
      // Initializing variables
    uint16 public a = 20;
    uint16 public b = 10;
 
    // Initializing a variable
    // with sum
    uint public sum = a + b;
 
    // Initializing a variable
    // with the difference
    uint public diff = a - b;
 
    // Initializing a variable
    // with product
    uint public mul = a * b;
 
    // Initializing a variable
    // with quotient
    uint public div = a / b;
 
    // Initializing a variable
    // with modulus
    uint public mod = a % b;
 
    // Initializing a variable
    // decrement value
    uint public dec = --b;
 
    // Initializing a variable
    // with increment value
    uint public inc = ++a;
}
