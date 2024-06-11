// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


contract MyToken {
    // public variables here
    string public tokenName = "ARYAN VEDY";
    string public tokenAbbrv = "AV";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    // mint function
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
