pragma solidity ^0.5.0;

contract A {

    // state variables can be public, private, internal, but not external.
         // uint external z;
    // state variables are stored in storage by default.
    // state variables can be overwritten
    uint public a ;
    uint private b;
    uint public c;
    string public message;
    string internal name;
    uint constant public k = 5; // constants are cheaper


    event expose(uint a, uint b, uint c, string message, string name);


    // public
        // all can access.
        // can be used when deployed
        // can be inherited
        // compiled to ABI code
    // memory
        // temporary
        // non-persistent
        // mutable
        // cannot be accessed outside the scope of a function
        // it exists while a function is being called
        // short and cheap
    function func1(uint _a, uint _b, string memory _name) public {
        a = _a;
        b = _b;
        c = a * b;
        name = _name;

        message = "func1 public";
        emit expose(a,b,c, message, name);
    }


    // private 
        // can be access only from this contract
        // private is a subset of internal
        // cannot be used when deployed
        // cannot be inherited
        // wont compiled to ABI code
        // private prevents other contracts' access and modifying info inside the contract  
            // but the whole contract is still visible to the world.
    function func2(uint _a, uint _b, string memory _name) private {
        a = _a;
        b = _b;
        c = a * b;
        name = _name;

        message = "func2 private";
        emit expose(a,b,c, message, name);
    }


   // internal
        // only this contract and contracts deriving from it can access
        // cannot be used when deployed
        // can be inherited
    function func3(uint _a, uint _b, string memory _name) internal {
        a = _a;
        b = _b;
        c = a * b;
        name = _name;

        message = "fun3 internal";
        emit expose(a,b,c, message, name);
    }


    // external
        // cannot be accessed internally, onyl externally
        // external is a subset of public
        // can be used when deployed
        // cannot be inherited
        // cannot be called internally unless this keyword is used
    // calldata (also called stack)
       // calldata is like memory, but it can only be used for function inputs.
       // calldata declared variables are non-modifiable, non-persistent, cheaper to store, avoids unnecessary copies.
       // calldata must be used when declaring an external function's arguments
       // calldata can be used for declaring arguments only, not in function logic
    function func4(uint _a, uint _b, string calldata _name) external {
        a = _a;
        b = _b;
        c = a * b;
        name = _name;

        message = "func4 external";
        emit expose(a,b,c, message, name);
    }


    // pure
        // pure function declares that no state variable will be changed or read
        // pure function does not read state variables from the blockchain or write anything to the blockchain
        // pure function only read local or function variables
    function func5() public pure returns (uint) {

        // local or function variables
        uint p = 5;
        uint r = 7;
        uint t = p * r;
        return t;
    }


    // view
       // view function declares that no state variable will be changed but can be read
    function func6() public view returns (uint) {
    // function func6(uint _a) public view returns (uint) {
        // a = _a; // this will throw error, since it tries to modify the state variable
        // uint a = _a; // by this way, it can be overwritten, but not suggested. 
                        // Instead, use a setter function to set the value of a, then read it here
        uint p = 5;
        uint r = 7;
        uint t = p * r * k * a;
        return t;
    }
    // use this helper function to set state variable a, then run the func6
    function set(uint _a) public {
        a = _a;
        }


    // storage
        // for array, struct, mapping types (dynamic data types)
        // long term and expensive
        // persistent
        // mutable
        // store on blockchain
    // usage: after deploying, enter a value and index a few times,
        // then use the values array to enter its index location to return its value.
    uint[] public values;
    function func7 (uint _value, uint _index) public returns(uint) {
        values.push(_value);
        uint[] storage valuesarray = values;
        return valuesarray[_index];
        
    }


    // payable
        // it can accept funds
        // if payable is not specified, function will reject funds that are sent
    uint public balance_of_contract = 0;
    address public msgsender;
    uint public msgvalue;
    function deposit() public payable returns(uint) {
        msgvalue = msg.value;
        msgsender = msg.sender;
        balance_of_contract = address(this).balance;
    }

}



contract B is A {

    function inheritFunc3fromA() public {
    func3(5, 7, "ted");
    }

}
