# README

This simple application use PostgreSQL database for simple books table with attributes author, title, isbn.

Applicaton provide three API endpoints:

#### Create new book

- METHOD: `POST`
- URL: `/book-add`
- Expected attributes: `author`, `title`, `isbn`.

Example:

```
curl -d '{"author": "Book 1 author", "title": "Book 1 title", "isbn": "BOOK1ISBN"}' -H "Content-Type: application/json" -X POST http://localhost:3000/book-add
# return {"status":200,"message":"Book saved!"}
```
#### Search book by ISBN

- METHOD: `GET`
- URL: `/search/isbn/:isbn`
- Expected argument: `isbn`

Example:

```
curl -X GET http://localhost:3000/search/isbn/BOOK1ISBN
# return {"id":1,"title":"Book 1 title","author":"Book 1 author","isbn":"BOOK1ISBN","_links":{"self":{"href":"http://books/1"}}}
```

#### Get book by database ID

- METHOD: `GET`
- URL: `/:id`
- Expected argument: `id`

Example:

```
curl -X GET http://localhost:3000/1
# return {"id":1,"title":"Book 1 title","author":"Book 1 author","isbn":"BOOK1ISBN","_links":{"self":{"href":"http://books/1"}}}
```
