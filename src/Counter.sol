// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number = 1;

    function setNumber(uint256 newNumber) public {
        if (newNumber != 0) {
            number = newNumber;
        }
    }

    function increment() public returns (uint256 number) {
        number++;
        // without this line, the fuzzer will only call one function between this and incrementAgain as they are identical
        // number++; 
    }

    function incrementAgain() public {
        number++;
    }

    function decrement() public {
        number--;
    }
}
