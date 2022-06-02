// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// Maps are created with the syntax mapping(keyType => valueType).
// The keyType can be any built-in value type, bytes, string, or any contract.
// valueType can be any type including another mapping or an array.
// Mappings are not iterable.
// Mappings are like dictionaries in Python.

// image a list of strings ["a", "b", "c"].
    // to check whether a string is in the list, you need to check every value in it.
    // however, in a dictionary, you can check whether a key is in the dictionary.

contract MeMapping {
    // Mappings
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    function removebooks(uint _id) public {
        // delete will reset to the default value of its type. for uint, it will be 0.
        delete books[_id];
    }
    
    function removemyBooks(address _address, uint _id) public {
        delete myBooks[_address][_id];
    }
    
}