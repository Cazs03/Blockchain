// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.25 <0.7.0;

contract Vulnerable {
    uint256 number = 10;

    function retrieve() public view returns (uint256) {
        return number;
    }
}
