// wrap modifiers in a function to save on gas cost and space.


pragma solidity ^0.8.13;

contract FunctionModifier {

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }


    function _onlyOwner() public {
        require(msg.sender == owner);
    }


    modifier onlyOwner() {
        _onlyOwner();
        _;
    }

    function _validAddress(address _addr) public {
        require(_addr != address(0));
    }

    modifier validAddress(address _addr) {
        _validAddress(_addr);
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

}
