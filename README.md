# Ubiqutus ERC20 Token Contract

## Overview

The `ubiqutus` contract is an ERC20 token implementation using OpenZeppelin's library. The token is named "UNIT" with the symbol "UT". This contract allows for standard ERC20 functionalities along with additional administrative capabilities like minting, burning, and transferring ownership.

## Features

- **Minting Tokens**: The owner can mint new tokens to any address.
- **Burning Tokens**: Any token holder can burn their tokens.
- **Ownership Transfer**: The owner can transfer ownership of the contract to a new address.
- **Token Transfer**: Allows the owner to transfer tokens from one address to another.
- **Balance Check**: Any user can check the balance of a specific address.

## Contract Functions

### Minting Tokens

Allows the owner to mint new tokens to a specified address.

### Burning Tokens

Allows any token holder to burn their tokens.

### Ownership Transfer

Enables the owner to transfer the ownership of the contract to a new address, ensuring that the new owner address is not a zero address.

### Token Transfer

Enables the owner to transfer tokens from one address to another.

### Balance Check

Allows any user to check the balance of a specified address.

## Access Control

- The `accessible` modifier restricts certain functions to be executed only by the owner.
- Ownership management is crucial for contract administration and is handled securely with appropriate checks.

## How to Use

1. **Deployment**: Deploy the contract using a Solidity-compatible Ethereum development environment like Remix or Truffle.
2. **Minting**: Use the `mint` function to create new tokens and assign them to a specific address.
3. **Burning**: Use the `burn` function to destroy a specified amount of tokens from your balance.
4. **Ownership Transfer**: Use the `transferOwnership` function to assign contract ownership to a new address.
5. **Token Transfer**: Use the `transferTokens` function to move tokens from one address to another.
6. **Check Balance**: Use the `checkBalance` function to query the token balance of any address.

## License

This contract is licensed under the MIT License.

---

Feel free to contribute to the development and improvement of this contract. For any issues or feature requests, please open an issue or submit a pull request.
