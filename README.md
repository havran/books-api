# README

This simple application use PostgreSQL database for simple books table with attributes author, title, isbn.

Applicaton provide three API endpoints:

#### Create new book

Example:

```
curl -d '{"author": "Book 1 author", "title": "Book 1 title", "isbn": "BOOK1ISBN"}' -H "Content-Type: application/json" -X POST http://localhost:3000/book-add
```
