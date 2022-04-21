pragma solidity 0.6.0;

contract MyContract {
	 address admin;
	 function foo(uint a) external onlyAdmin() {
	 // do some stuff
	 }
}

modifier onlyAdmin() {
	 require(msg.sender == admin, 'only admin');
	 //
	 -;
}

