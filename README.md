# Function Frontend

This Solidity Avalanche program is a simple smart contract to create your own ERC20 token and deploy it using HardHat or Remix.

## Description

This program is creation of smart contract of ERC20 token written in Solidity.This program serves as Create and Mint Token - ETH + AVAX to advance on the next module.

## Getting Started

### Executing program

To run this progam, you can use Remix. To get started access the link https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Mytoken is ERC20 {
    constructor() ERC20("MyToken","MTK") {
        _mint(msg.sender, 100 * 10**uint(decimals()));
    }

}

To compile the code, click on the "Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.25" (or another compatible version), and then click on the "Compile mint.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transaction" tab in the left-hand sidebar. Select the "error" contract from the dropdown menu, and then click on the "Deploy" button.

Copy an account: you can get your account from upper "Deploy & Run Transaction". Copy the first account and then choice of yours for the second account.

Once the contract is deployed, you can interact with it by calling the approve,decreaseAllowance,increaseAllowance,transfer,transferFrom,allowance,balanceOf. All of the mentioned function has a dropdown, interact with all the function with the account address you copied.

## Authors

Metacrafter Jaimmy 


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
