// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Greeting {
    string name;
    string bio;

    function setInfo(string memory _name, string memory _bio) public {
        name = _name;
        bio = _bio;
    }

    function clearInfo() public {
        name = "";
        bio = "";
    }

    function hasName() public view returns (bool) {
        return bytes(name).length > 0;
    }

    function getInfo() public view returns (string memory, string memory) {
        return (name, bio);
    }
}
