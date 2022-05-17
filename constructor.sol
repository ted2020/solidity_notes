pragma solidity ^0.5.0;

contract custAccount {

    // state variables
    address owner;
    bool isaccount;
    uint accountbalance;
    string custName;
    uint createdAt;

    // setter function
    // function custData (bool _isaccount, string memory _custName) public {

    //     owner = msg.sender;
    //     isaccount = _isaccount;
    //     accountbalance = address(this).balance;
    //     custName = _custName;
    //     createdAt = block.timestamp;
    // }

    constructor (bool _isaccount, string memory _custName) public {

        owner = msg.sender;
        isaccount = _isaccount;
        accountbalance = address(this).balance;
        custName = _custName;
        createdAt = block.timestamp;
    }

    // getter function
    function get() public view returns (address, bool, uint, string memory, uint) {
        return (owner, isaccount, accountbalance, custName, createdAt);
    }

}