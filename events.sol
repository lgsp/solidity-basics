pragma solidity 0.6.0;

contract MyContract {
	 event NewTrade(
	       uint indexed date,
	       address indexed from,
	       address indexed to,
	       uint amount
	 );

	 function trade(address to, uint amount) external {
	 	  emit NewTrade(now, msg.sender, to, amount);
	 }
}