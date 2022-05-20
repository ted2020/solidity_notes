pragma solidity ^0.5.0;

contract sampleFunction {

    function global() public view returns(address, uint, uint){
      // global variables are accessible by all contracts.
      address sender = msg.sender; // stores the address that call this function
      uint timestamp = block.timestamp;
      uint blockNumber = block.number;
      return (sender, timestamp, blockNumber);
    }

    // if you specify what to return in returns, no need to specify the return at the end of the function.
    // doing it this way saves you some gas.
    function global() public view returns(address sender, uint timestamp, uint blockNumber){
      // global variables are accessible by all contracts.
      address sender = msg.sender; // stores the address that call this function
      uint timestamp = block.timestamp;
      uint blockNumber = block.number;
    }

    // this function will capture the outputs of the global function and save its outputs to the specified variables.
    function captureOutputs() public pure {
        (address _sender, uint _timestamp, uint _blockNumber) = global();
        // this will capture the last output of the global function.
        // Commas are to skip other returns.
        // we also renamed it to be double underscore to avoid conflicts with the other variable.
        (, , uint __blockNumber) = global();
    }


}