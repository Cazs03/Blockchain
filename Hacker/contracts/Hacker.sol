// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.25 <0.7.0;

interface Objetivo {
    function retrieve() external view returns (uint256);
}

contract Hacker {
    Objetivo direccion = Objetivo(0x9a6120275387Dc5Aa5dab0D87aeeee5894A3411B);

    function getValue() public view returns (uint256) {
        uint256 number = direccion.retrieve();
        return number;
    }
}
