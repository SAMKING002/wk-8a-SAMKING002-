--INITIALISE THE DATABASE
create database Library;

use Library;

-- CREATION ON RELEVANT TABLES IN THE SYSTEM

CREATE TABLE Category (
id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Book (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(200) NOT NULL,
category_id INT ,
publication_year INT,
copies_owned INT ,

FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE Author (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL
);

CREATE TABLE bookauthor (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE CASCADE
);

CREATE TABLE ReservationStatus (
id INT AUTO_INCREMENT PRIMARY KEY,
status_value VARCHAR(100) NOT NULL
);

CREATE TABLE MemberStatus (
id INT AUTO_INCREMENT PRIMARY KEY,
status_value VARCHAR(100) NOT NULL
);

CREATE TABLE Users (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
joined_date date,
active_status_id int,

FOREIGN KEY (active_status_id) REFERENCES memberStatus(id) ON DELETE CASCADE
);


CREATE TABLE Reservation (
id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
user_id INT,
reservation_date date,
reservation_status_id INT,

FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE CASCADE,
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
FOREIGN KEY (reservation_status_id) REFERENCES reservationStatus(id) ON DELETE CASCADE
);

CREATE TABLE BookBorrowed (
id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
user_id INT,
borrow_date date,
return_date date,

FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE CASCADE,
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE Fined (
id INT AUTO_INCREMENT PRIMARY KEY,
borrow_id INT,
user_id INT,
fine_date DATE,
fine_amount VARCHAR(200) NOT NULL,

FOREIGN KEY (borrow_id) REFERENCES BookBorrowed(id) ON DELETE CASCADE,
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE FinePayment (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
payment_date DATE,
payment_amount VARCHAR(200) NOT NULL,

FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);