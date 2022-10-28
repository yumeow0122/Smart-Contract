// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.9;

contract ERC20{

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint256 amount);

    string public constant name = "Yumeow Coin";
    string public constant symbol = "YMC";

    uint8 public constant decimals = 5;
    uint256 public constant supply = 1000000000000;


    mapping(address => uint256) balances;
    mapping(address => mapping (address => uint256)) allowed;

    constructor(){
      balances[msg.sender] = supply;
    }

    function getName() public pure returns (string memory) {
      return name;
    }

    function getSymbol() public pure returns (string memory) {
      return symbol;
    }

    function getDecimals() public pure returns (uint256) {
      return decimals;
    }

    function getSupply() public pure returns (uint256) {
      return supply;
    }

    function balanceOf(address tokenOwner) public view returns (uint) {
        return balances[tokenOwner];
    }

    function approve(address delegate, uint numTokens) public returns (bool) {
        allowed[msg.sender][delegate] = numTokens;
        emit Approval(msg.sender, delegate, numTokens);
        return true;
    }

    function allowance(address owner, address delegate) public view returns (uint) {
        return allowed[owner][delegate];
    }

    function transfer(address _receiver, uint256 _value) public returns (bool) {
        address _sender = msg.sender;
        _transfer(_sender, _receiver, _value);
        return true;
    }

    function transferFrom(address _owner, address _buyer, uint256 _value) public returns (bool) {
        _transfer(_owner, _buyer, _value);
        return true;
    }

    function _transfer(address from, address to, uint256 amount) internal {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");
        require(balances[from] >= amount, "ERC20: transfer amount exceeds balance");
        
        unchecked{
            balances[from] -= amount;
            balances[to] += amount;
        }
        emit Transfer(from, to, amount);
    }

} 