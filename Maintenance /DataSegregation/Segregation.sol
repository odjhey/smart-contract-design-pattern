pragma solidity ^0.4.24;

contract DataStorage {
    mapping(bytes32 => uint) uintStorage;

    function getUintValue(bytes32 key) public constant
        returns (uint) {
        return uintStorage[key];
    }

    function setUintValue(bytes32 key, uint value) public {
        uintStorage[key] = value;
    }
}
