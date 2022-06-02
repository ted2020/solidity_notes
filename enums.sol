pragma solidity ^0.5.0;

// Solidity supports enumerables and they are useful to model choice and keep track of state.
// Enums can be declared outside of a contract.

contract enums {
    enum weekends{saturday,sunday}
    weekends public week_ends;
    function get() public view returns(weekends){return week_ends;}
    function set(weekends _weekends) public {week_ends = _weekends;}
    function reset() public {delete week_ends;}

}


