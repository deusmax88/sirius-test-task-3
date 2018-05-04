CREATE TABLE testdb.author
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL
)
DEFAULT CHARACTER SET UTF8
;

CREATE TABLE testdb.book
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL

)
DEFAULT CHARACTER SET UTF8
;

CREATE TABLE testdb.author_book
(
    author_id int NOT NULL,
    book_id int NOT NULL,
    PRIMARY KEY (author_id, book_id),
    CONSTRAINT book_fk FOREIGN KEY (book_id) REFERENCES book(id),
    CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES author(id)
);