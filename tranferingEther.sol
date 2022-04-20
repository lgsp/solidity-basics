pragma solidity 0.6.0;

contract MyContract {
	 function foo(address payable to, amount) external {
	 	  to.transfer(100); 
	 }

	 function bar() external payable {
	 	  msg.value
		  address(this).balance
	 }

	 fallback() external {
	 	    //
	 }

	 receive() external payable {
	 	   //
	 }
}