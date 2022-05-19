pragma solidity ^0.6.0;


contract myContract {

    uint[] public uintArray = [1,2,3];

    string[] public stringArray = ["a", "b", "c"];

    string[] public values;

    uint[][] public array2D = [  [1,2,3] , [4,5,6]     ];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function popLastItem() public {
        values.pop();
    }

    function arrayLength() public view returns(uint) {
        return values.length;
    }

    function removeByIndex(uint index) public {
        delete values[index];
    }






}