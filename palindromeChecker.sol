// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract PalindromeChecker {
    
    function isPalindrome(string memory str) public pure returns (bool) {
        bytes memory strBytes = bytes(str);
        uint len = strBytes.length;
        for (uint i = 0; i < len / 2; i++) {
            if (strBytes[i] != strBytes[len - 1 - i]) {
                return false;
            }
        }
        return true;
    }
}
