CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price  DOUBLE,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers(
 customer_id PRIMARY KEY,
 customer_name VARCHAR(215),
 email VARCHAR(215),
 address TEXT
);

CREATE TABLE Orders(
 order_id PRIMARY KEY,
 customer_id (FOREIGN KEY REFERENCES Customers TABLE),
 order_date DATE
);

CREATE TABLE Order_Details
(
orderdetailid (Primary Key),
order_id (FOREIGN KEY REFERENCES Orders TABLE),
book_id (FOREIGN KEY REFERENCES Books TABLE),
quantity DOUBLE
);