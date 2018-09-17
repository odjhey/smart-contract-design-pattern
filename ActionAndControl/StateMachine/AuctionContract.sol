pragma solidity ^0.4.24;

contract Auction {
  enum Stages {
    AcceptingBlindBids,
    RevealBids,
    WinningBidderDetermined
  }

  Stages public stage = Stages.AcceptingBlindBids;

  uint public creationTime = now;

  modifier atStage(Stages _stage) {
    require(stage == _stage);
    _;
  }

  modifier timedTransitions() {
    if (stage == Stages.AcceptingBlindBids && now >= creationTime + 6 days) {
      nextStage();
    }
    if (stage == Stages.RevealBids && now >= creationTime + 10 days) {
      nextStage();
    }
    _;
  }

    function nextStage() internal {
      stage = Stages(uint(stage) + 1);
    }

    function bid() public payable timedTransitions atStage(Stages.AcceptingBlindBids) {
      // 入札のための実装
    }

    function reveal() public timedTransitions atStage(Stages.RevealBids) {
      // 入札額を明らかにするための実装
    }

    function RequestItems() public timedTransitions atStage(Stages.WinningBidderDetermined) {
      // 落札者に商品を届けるための実装
    }

}
