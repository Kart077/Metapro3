// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint public value;

    constructor() {
        value = 0;
    }

    // Function to set a value, ensuring the value is greater than zero
    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    // Function to increment the value with an assert check
    function incrementValue() public {
        uint newValue = value + 1;
        assert(newValue > value); // This should always be true to avoid overflow
        value = newValue;
    }

    // Function to reset the value and revert the transaction with a custom message
    function resetValue() public {
        value = 0;
        revert("Value has been reset and transaction reverted");
    }
}