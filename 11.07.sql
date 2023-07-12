create table book3 (
 book_id int not null,
 title text not null,
 amount int,
 Constraint PK_book3_book_id primary key (book_id)
);

select * from book3;

create Sequence If not exists book3_book_id_seq
Start WITH 1 owned by book3.book_id;

Alter table book3
Alter column book_id Set default nextval('book3_book_id_seq');

Insert into book3 (title, amount)
Values ('Beg', 3);

create table book4 (
 book_id int Generated Always As Identity not null,
 title text not null,
 amount int,
 Constraint PK_book4_book_id primary key (book_id)
);

Insert into book4 
Values (2,'Beg', 3);  не получится вставить 2 строку
