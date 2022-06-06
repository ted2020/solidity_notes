// https://etherscan.io/tx/0xfceb28129ea968a3a27ed066dd325d47350ff1e7528a2a358a5f36f74ac5d943#eventlog
// https://etherscan.io/address/0x630d98424efe0ea27fb1b3ab7741907dffeaad78#code

// Events allow logging to the Ethereum blockchain. Some use cases for events are:
    // Listening for events and updating user interface
    // A cheap form of storage

pragma solidity ^0.5.0;

contract custAccount {
    address owner;
    uint accountbalace;
    string cust_name;
    uint createdAt;
    
    // log those events to the blockchain
    // it is simply a notification that something happened
    // logged events can be seen on the console
    // smart contracts are not able to access those logged events
    // use web3 library to read the events from the blockchain
    event customerdata(address owner, string custname, uint createdAt);
    
    function settingCustomerData(string memory custname) public {
            // constructor(string memory custname) public {

        
        owner = msg.sender;
        accountbalace = address(this).balance;
        cust_name = custname;
        createdAt = block.timestamp;
        
        // fire the event to the blockchain
        emit customerdata(owner, cust_name, createdAt);
        
    }
    
    
    
    // event customerdata(address owner, uint accountbalace, uint createdAt);
    
    // function get() public payable {
    //     emit customerdata (msg.sender, msg.value, now);
        
    // }
    
    
    
}