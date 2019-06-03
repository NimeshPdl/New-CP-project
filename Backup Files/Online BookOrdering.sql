
create database BookOrderingManagement;
use BookOrderingManagement;


create table users
(
UserID int primary key not null,
UserName varchar (25),
UserAge int,
UserAddress Varchar (25),
UserPhonenumber Varchar (30)
)

sp_help users;

create table orders
(
orderid int primary key not null,
ordername varchar (30),
orderdate date,
Userid int foreign key references users
)

sp_help orders;

create table book
(
bookid int primary key not null,
bookname varchar (30)
)
sp_help book;


create table book_order
(
book_orderid int primary key not null,
quantity int,
bookid int foreign key references book,
orderid int foreign key references orders
)

sp_help book_order;


create table author
(
authorid int primary key not null,
authorname varchar (25)
)

sp_help author;

create table book_author
(
book_author int primary key not null,
bookid int foreign key references book,
authorid int foreign key references author
)

sp_help book_author;



create table review
(
reviewid int primary key not null,
reviewdate date
)


sp_help review;

create table payment
(
paymentid int primary key not null,
paymentdate date,
amount float
)

sp_help payment;