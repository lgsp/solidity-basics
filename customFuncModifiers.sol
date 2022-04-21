pragma solidity 0.6.0;

contract MyContract{
    function foo(uint a) external myModifier1(a) myModifier2(a){
        // do some stuff
    }

    modifier myModifier1(uint a) {
        require(a == 10, 'my error message');
        -;
    }

    modifier myModifier2(uint a) {
        require(a == 10, 'my error message');
        -;
    }
    
}
