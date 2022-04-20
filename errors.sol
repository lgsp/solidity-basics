pragma solidity 0.6.0;

contract MyContract {
	 uint a;
	 function foo() external {
	 	  if(a == 10) {
		       revert('This is why it reverts');
		  }
		  require(a != 10, 'This is why it reverts');
		  assert(a != 10);
	 }

	 function willThrow() external {
	 	  //revert('Because reasons');
           //require(true == false, 'because reasons');
           assert(true == false);
	 }

     function willThrowInOtherContract() external {
         B b = new B();
         //b.bar();

         address(b).call(abi.encodePacked("bar()"));
     }

}

contract B {
    function bar() external {
        revert('Because other reasons');
    }
}