pragma solidity 0.6.0;

contract A {

	 //1. interface of B => B
	 //2. address of B

	 address addressB;

	 function setAddressB(address _addressB) external {
	 	  addressB = _addressB;
	 }

	 function callHelloWorld() external view returns(string memory) {
	 	  B b = B(addressB);
		  return b.helloWorld();
	 }
}

contract B {
	 function helloWorld() external pure returns(string memory) {
	 	  return 'HelloWorld';
	 }
}