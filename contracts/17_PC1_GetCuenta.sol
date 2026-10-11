// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract GetCuenta {
    function obtenerCuenta(string memory codigo) public pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(codigo))) % 15 + 1;
    }
}

//https://github.com/jlescanoguti/258658_JRLG/blob/main/contracts/17_PC1_GetCuenta.sol