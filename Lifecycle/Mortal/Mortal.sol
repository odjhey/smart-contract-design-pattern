pragma solidity ^0.4.24;

import "../authorization/Ownership.sol";

contract Mortal is Owned {
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    function destroyAndSend(address recipient) public onlyOwner {
        selfdestruct(recipient);
    }
}
