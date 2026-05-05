// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract PANGA {
    string public name = "PANGA";
        string public symbol = "PANGA";
            uint8 public decimals = 18;
                uint256 public totalSupply = 100000 * 10**18;
                    mapping(address => uint256) public balanceOf;
                        mapping(address => mapping(address => uint256)) public allowance;
                            event Transfer(address indexed f, address indexed t, uint256 v);
                                event Approval(address indexed o, address indexed s, uint256 v);

                                    constructor() { balanceOf[msg.sender] = totalSupply; emit Transfer(address(0), msg.sender, totalSupply); }

                                        function transfer(address t, uint256 v) public returns (bool) {
                                                require(balanceOf[msg.sender] >= v, "Low Balance");
                                                        balanceOf[msg.sender] -= v; balanceOf[t] += v;
                                                                emit Transfer(msg.sender, t, v); return true;
                                                                    }

                                                                        function approve(address s, uint256 v) public returns (bool) {
                                                                                allowance[msg.sender][s] = v;
                                                                                        emit Approval(msg.sender, s, v); return true;
                                                                                            }

                                                                                                function transferFrom(address f, address t, uint256 v) public returns (bool) {
                                                                                                        require(v <= balanceOf[f] && v <= allowance[f][msg.sender], "Error");
                                                                                                                balanceOf[f] -= v; balanceOf[t] += v; allowance[f][msg.sender] -= v;
                                                                                                                        emit Transfer(f, t, v); return true;
                                                                                                                            }
                                                                                                                            }
