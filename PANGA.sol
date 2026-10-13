// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PANGA is ERC20, Ownable {
    // 1 millón de tokens con los 18 decimales estándar
        uint256 private constant INITIAL_SUPPLY = 1_000_000 * 10**18;

            constructor() ERC20("PANGA", "PANGA") Ownable(msg.sender) {
                    _mint(msg.sender, INITIAL_SUPPLY);
                        }

                            // Función opcional para quemar tokens si es necesario
                                function burn(uint256 amount) external {
                                        _burn(msg.sender, amount);
                                            }
                                            }
