// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ubiqutus is ERC20 
{
    address public owner;

    constructor() ERC20("UNIT", "UT") 
    {
        owner = msg.sender;
        _mint(owner, 100);
    }

    modifier accessible() 
    {
        require(msg.sender == owner, "Only owner can access the function!!");
        _;
    }

    // Function to mint new tokens
    function mint(address to, uint256 amount) external accessible 
    {
        _mint(to, amount);
    }

    // Function to burn tokens
    function burn(uint256 amount) external 
    {
        _burn(msg.sender, amount);
    }

    // Function to transfer ownership to another address
    function transferOwnership(address newOwner) external accessible 
    {
        require(newOwner != address(0), "New owner is the zero address");
        owner = newOwner;
    }

    // Function to transfer tokens from one address to another
    function transferTokens(address from, address to, uint256 amount) external 
    {
        _transfer(from, to, amount);
    }

    // Function to check the balance of an address
    function checkBalance(address account) external view returns (uint256) 
    {
        return balanceOf(account);
    }
}
