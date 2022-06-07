pragma solidity ^0.5.0;

contract A {

    uint public z;

    function calc(uint x, uint y) public returns (uint) {
        z = x + y;
        return z;
    }
}

contract B is A {
    
        // this will override the function calc in A, because it has the same signature

    //     function calc(uint x, uint y) public returns (uint) {
    //     z = x + y;
    //     return z;
    // }

        // but if i change it a little bit, it will not override the function calc in A, 
        // such as changing sign to negative, or adding an argument to the function

        function calc(uint x, uint y, uint k) public returns (uint) {
        z = x + y + k;
        return z;
    }
    //     function calc(uint x, uint y) public returns (uint) {
    //     z = x - y;
    //     return z;
    // }
}