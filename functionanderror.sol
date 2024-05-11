// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ErrorHandling {
  function revertExample(uint _num) public pure returns (uint) {
        // Using revert() to revert the transaction with a custom error message
        if (_num == 1) {
            revert("Number cannot be one");
        }
        // Add a default return value
        return _num;
}

    function requireExample(uint _num) public pure returns (uint) {
        // Using require() to validate a condition
        require(_num > 1, "Number must be greater than one");
        return _num;
    }

      function assertExample(uint _num) public pure returns (uint) {
        uint result = _num * 2;
        // Using assert() to ensure a condition that should never be false
        assert(result > _num);
        return result; 
   }
