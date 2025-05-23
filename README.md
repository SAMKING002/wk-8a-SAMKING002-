# 📚 Library Management System Database

## 📝 Project Description

This project defines the **relational database structure** for a Library Management System. It covers core operations such as managing books, authors, reservations, borrowing, and fines. The database schema is built using **MySQL** and supports data integrity through appropriate use of foreign keys and cascading rules.

---

## 📂 Database Schema Overview

The project includes the following tables:

- `Category`: Book categories (e.g., Fiction, Science).
- `Book`: Stores book details including title, category, year, and available copies.
- `Author`: Stores author names.
- `BookAuthor`: Many-to-many relationship between books and authors.
- `ReservationStatus`: Status types for book reservations (e.g., Pending, Approved).
- `MemberStatus`: Status types for library members (e.g., Active, Inactive).
- `Users`: Library users/members.
- `Reservation`: Handles book reservations made by users.
- `BookBorrowed`: Tracks borrowed books and their return dates.
- `Fined`: Records fines associated with late returns.
- `FinePayment`: Records fine payments by users.

---

## 🚀 How to Set Up / Run the Project

### ✅ Requirements
- MySQL Server (e.g., XAMPP, WAMP, or MySQL CLI)
- A MySQL client like:
  - MySQL Workbench
  - phpMyAdmin
  - Command-line terminal

### 📥 Steps to Set Up

1. **Open your MySQL client** (e.g., MySQL Workbench or phpMyAdmin).
2. **Run the following SQL script**:

```sql
--Create the Library database
CREATE DATABASE Library;
USE Library;

-- Create tables (paste the entire SQL provided in this project)
-- Make sure to run all the CREATE TABLE commands in order
```

###⚠️ Ensure foreign key relationships are respected by executing the script in the defined sequence.

###📌 Notes
1. The database enforces referential integrity using foreign key constraints with ON DELETE CASCADE, ensuring related records are properly cleaned up.

2. You can customize the status_value fields in ReservationStatus and MemberStatus to suit your application’s logic (e.g., 'Pending', 'Approved', 'Returned').

###🛠️ Example Values (Optional)
1. You might populate ReservationStatus like:
 **INSERT INTO ReservationStatus (status_value) VALUES ('Pending'), ('Approved'), ('Rejected');
 
2. And MemberStatus like:
**INSERT INTO MemberStatus (status_value) VALUES ('Active'), ('Inactive'), ('Suspended');

### 📧 Contact
For questions or improvements, feel free to reach out to the project author.

