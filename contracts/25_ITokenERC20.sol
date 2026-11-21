// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
interface ITokenERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function totalSupply() external view returns (uint256);
    
}