// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";
import "src/Counter.sol";

interface IHevm {
    // Set block.timestamp to newTimestamp
    function warp(uint256 newTimestamp) external;
  
    // Sets block.number
    function roll(uint256 newNumber) external;
  }

  
  abstract contract Setup is BaseSetup {
    IHevm hevm = IHevm(address(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D));
  
    Counter counter;

    function setup() internal virtual override {
        hevm.warp(52 weeks);
        counter = new Counter();
    }
}
