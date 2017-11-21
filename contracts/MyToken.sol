pragma solidity ^0.4.17;

import '../node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol';
import '../node_modules/zeppelin-solidity/contracts/token/StandardToken.sol';

contract MyToken is StandardToken, Ownable {
  string public constant name = "MyToken";
  string public constant symbol = "NGO";
  uint256 public constant decimals = 0;
  uint256 public constant INITIAL_SUPPLY = 10000;
  
  function MyToken() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
