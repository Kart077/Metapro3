// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint public value;

    constructor() {
        value = 0;
    }

    // Function to set a value, ensuring the value is greater than zero
    function set(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    // Function to increment the value with an assert check
    function increment() public {
        uint newValue = value + 1;
        assert(newValue > value); 
        value = newValue;
    }

    // Function to reset the value and revert the transaction with a custom message
   // Function to demonstrate the revert() statement
    function resetValue() public {
        // Check some condition (in this case, we will always revert)
        if (value != 0) {
            revert("Value is not zero, cannot reset.");
        }
        value = 0;
    }
}