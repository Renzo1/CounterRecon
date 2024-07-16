// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is
    BaseTargetFunctions,
    Properties,
    BeforeAfter
{
    // The coverage shows that the fuzzer hits either this function or counter_increment2
    // but never both. To hit both, their logic needs to be significantly differ.
    function counter_increment() public {
        uint256 numberNew = counter.increment();
    }

    function counter_increment2() public {
        uint256 newNumber = counter.increment();
    }




    // function counter_incrementAgain() public {
    //     counter.incrementAgain();
    // }

    // function counter_decrement() public {
    //     counter.decrement();
    // }

    // function counter_setNumber1(uint256 newNumber) public {
    //     // example assertion test replicating testFuzz_SetNumber
    //     try counter.setNumber(newNumber) {
    //         if (newNumber != 0) {
    //             t(counter.number() == newNumber, "number != newNumber");
    //         }
    //     } catch {
    //         t(false, "setNumber reverts");
    //     }
    // }

    // function counter_setNumber2(uint256 newNumber) public {
    //     // same example assertion test as counter_setNumber1 using ghost variables
    //     __before();

    //     counter.setNumber(newNumber);

    //     __after();

    //     if (newNumber != 0) {
    //         t(_after.counter_number == newNumber, "number != newNumber");
    //     }
    // }

}
