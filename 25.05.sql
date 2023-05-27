ALTER TABLE cars
RENAME year_of_release TO YOR;

ALTER TABLE cars
ADD Column amount int;

ALTER TABLE cars
DROP Column amount; 

Create table publisher (
    publisher_id int,
    publisher varchar(128) not null,
    adress text,

  CONSTRAINT PK_publisher_publisher_id primary key(publisher_id)
);

Create table book (
    book_id int,
    title varchar(32) not null,
    Price float,
    amount int,

    CONSTRAINT PK_book_book_id primary key(book_id)
);

INSERT INTO book (book_id, title, Price, amount) 
 VALUES (1, 'Идиот', '100', '7');

