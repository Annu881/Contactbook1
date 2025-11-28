// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactBook {
    string private savedName = "";        // initially empty
    string private savedPhone = "";       // initially empty
    address public owner;                 // who saved the contact

    function saveContact(string memory _name, string memory _phone) public returns (string memory) {
        // Only allow saving contact once (same as one-time winner)
        require(owner == address(0), "Contact already saved!");

        savedName = _name;
        savedPhone = _phone;
        owner = msg.sender;

        return "Contact saved successfully!";
    }

    function getContact() public view returns (string memory, string memory) {
        require(owner != address(0), "No contact saved yet!");
        return (savedName, savedPhone);
    }
}