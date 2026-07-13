// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PANGA is ERC20, Ownable {
    constructor() ERC20("PANGA", "PANGA") Ownable(msg.sender) {
            // 500 tokens con 18 decimales
                    _mint(msg.sender, 500 * 10**decimals());
                        }
                        }
