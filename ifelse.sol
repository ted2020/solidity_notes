pragma solidity ^0.8.3;

contract IfElse {

    function sampleFunction(uint x) public view returns(string memory) {
        if (x < 10) {return "less than 10";}

        else if (x < 20) {return "less than 20";}

        else {return "none";}

    }

}


contract IfElse {

    function sampleFunction(uint x) public view returns(uint) {
        if (x < 10) {return 0;}

        else if (x < 20) {return 1;}

        else {return 2;}

    }

}


contract IfElse {

    function sampleFunction(uint x) public view returns(string memory, uint) {
        if (x < 10) {return ("less than 10", 0);}

        else if (x < 20) {return ("less than 20", 1);}

        else {return ("none",2);}

    }

}

