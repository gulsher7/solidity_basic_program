// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ControlFlow {
    uint[] public data;

    function iteration() public returns (uint[] memory) {
        for (uint i = 0; i < 5; i++) {
            data.push(i);
        }
        return data;
    }
}

contract IfElse {
    uint public i = 10;
    bool public even;

    function checkEvenOdd() public returns (bool) {
        if (i % 2 == 0) {
            even = true;
        } else {
            even = false;
        }
        return even;
    }
}

contract BreakContinue {
    uint[] public data;
    uint8 j = 0;

    function breakFun() public returns (uint[] memory) {
        for (uint8 i = 0; i < 5; i++) {
            if (i == 3) {
                break;
            }
            data.push(i);
        }
        return data;
    }

    function continueFun() public returns (uint[] memory) {
        for (uint i = 0; i < 5; i++) {
            if (i == 3) {
                continue;
            }
            data.push(i);
        }
        return data;
    }
}
