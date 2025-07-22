// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    constructor() {
        owner = msg.sender; // Set contract deployer as the owner
    }

    // Allow contract to receive Ether
    receive() external payable {}

    // Fallback function (for non-empty calldata)
    fallback() external payable {}

    // Get wallet balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Send Ether to another address
    function sendEther(address payable _to, uint256 _amount) public {
        require(msg.sender == owner, "Not the owner");
        require(address(this).balance >= _amount, "Insufficient balance");
        (bool sent, ) = _to.call{value: _amount}("");
        require(sent, "Failed to send Ether");
    }

    // Change owner
    function changeOwner(address _newOwner) public {
        require(msg.sender == owner, "Not the owner");
        owner = _newOwner;
    }
}
