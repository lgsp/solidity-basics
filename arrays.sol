pragma solidity 0.6.0;

contract MyContract {

	 //1. storage arrays
	 uint[] myArray; // crud, create, read, update, delete

	 function foo() external {
	 	  myArray.push(2);
		  myArray.push(3);

		  myArray[1];

		  myArray[0] = 20;

		  delete myArray[1];

		  for(uint i = 0; i < myArray.length; i++) {
		  	   myArray[i];
		  }
	 }

	 //2. memory arrays
	 function bar() external {
	 	  uint[] memory newArray = new uint[](10);
		  newArray[0] = 10;
		  newArray[1] = 20;

		  newArray[0];
		  newArray[0] = 200:

		  delete newArray[5];
	 }

	 //3. arrays in functions
	 function fooBar(uint[] memory myArg) internal returns(uint[] memory) {}
}