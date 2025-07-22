// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {

    struct Person {
       string name;
       uint256 amount;
    }

    mapping(address => Person) public people;
    
    function store(string memory _name, uint256 _amount) public payable {
        // if require condition is unmet the transaction is automatically reverted
        require(msg.value >= 5 wei);
        people[msg.sender] = Person(_name, _amount);
    }

}
