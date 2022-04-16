pragma solidity ^0.6.0;

contract MyContract {
    uint value;

    // start with the most restrictive 
    function _getValue1() private view returns(uint) {
        return value;
    }

    // give authorization step by step only when you need to do it
    function _getValue2() internal view returns(uint) {
        return value;
    }

    function getValue3() external view returns(uint) {
        return value;
    }

    function getValue4() public view returns(uint) {
        return value;
    }

}

