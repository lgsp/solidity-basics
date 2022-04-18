pragma solidity 0.6.0;

contract MyContract {
	 //1. Declare mappings
	 mapping(address => uint) balances;
	 mapping(address => mapping(address => bool)) approved;
	 mapping(address => uint[]) scores;

	 function foo(address spender) external {
	   // add
	   balances[msg.sender] = 100;
	   // read
	   balances[msg.sender];
	   // update
	   balances[msg.sender] = 200;
	   // delete
	   delete balances[msg.sender];
	   // default values
	   balances[someAddressThatDoNotExist] => 0
	   // exotic mapping
	   approved[msg.sender][spender] = true;
	   approved[msg.sender][spender];
	   approved[msg.sender][spender] = false;
	   delete approved[msg.sender][spender];

	   //exotic mapping 2
	   scores[msg.sender].push(1);
	   scores[msg.sender].push(2);
	   scores[msg.sender][0];
	   scores[msg.sender][0] = 10;
	   delete scores[msg.sender][0];
	    
	 }

         
}