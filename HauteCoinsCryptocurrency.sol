pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HauteCoinsCryptocurrency is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HauteCoinsCryptocurrency(address _owner)  UpgradeableToken(_owner) {
    name = "HauteCoinsCryptocurrency";
    symbol = "HCC";
    totalSupply = 1250000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}