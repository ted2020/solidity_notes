pragma solidity ^0.5.0;

contract loop {
    uint public num;

    function _loop_ (uint n) public {
        for (uint i = 0; i < n; i++){
            num += 1;

            // cheaper way
            // ++num;
        }
    }
}

contract loop {

    function _loop_(uint n) public pure returns (uint) {
        uint k;

        for(uint i = 0; i < n; i++){
            k += i;
        }
        return k;
    }
}

contract loop {

    function _loop_() public {
        for(uint i = 0; i < 10; i++){
            if (i ==3) {
                break;
                // continue;
            }
        }
    }
}

contract loop{
    uint public num;
    function get() public view returns(uint){return num;}
    
    function inc() public {   
        while (num < 5) {
        num++;   
    }}
}


contract loop{
    uint public num;
    function set(uint _num) public {num=_num;}
    
    function inc() public {   
        while (num < 5) {
        num++;    
    }}
}




contract loop{
    uint public num;
    function set(uint _num) public { num=_num;}
    
    function inc() public {
        if (num<5){
        while (num < 5) {
        num++;
        
    }}
        else if (num>20){
            num--;
            
        } 
    }
}



contract loop{
    uint public num;
    function set(uint _num) public { num=_num;}
    
    function inc() public {
        if (num<5){
            do {num++;}
        while (num < 5); 
        
    }
        else if (num>20){
            num--;
            
        } 
    }
}