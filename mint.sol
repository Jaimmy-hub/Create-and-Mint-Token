// SPDX-License-Identifier: MIT
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 100 * 10**uint(decimals()));
    }

    //mint tokens, only callable by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // to burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
     //transfer 
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    //transferFrom
    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        _transfer(sender, recipient, amount);

        uint256 currentAllowance = allowance(sender, _msgSender());
        require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
        _approve(sender, _msgSender(), currentAllowance - amount);

        return true;
    }
}
    

// Accounts
// Owner > 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// User > 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// user > 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
