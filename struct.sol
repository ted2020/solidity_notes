pragma solidity ^0.5.0;


contract _struct_ {

    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book[] public book;

    function books(string memory _title, string memory _author, uint _book_id) public {
        book.push(Book({title: _title, author: _author, book_id: _book_id}));
    }

    function updateTitle(uint _index, string memory _title) public {
        Book storage book_ = book[_index];
        book_.title = _title;
    }

    function updateAuthor(uint _index, string memory _author) public {
        Book storage book_ = book[_index];
        book_.author = _author;
    }


}

