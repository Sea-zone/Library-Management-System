# Library Management System - DBMS Project

## Project Overview
This is a **Database Management System (DBMS) project** for managing a library.  
It demonstrates **relational database design**, **data normalization**, **CRUD operations**, and **stored procedures**.

---

## Database Design

**Tables:**

1. **Books**
   - book_id (PK)
   - title
   - author
   - published_year
   - genre

2. **Members**
   - member_id (PK)
   - name
   - email
   - phone
   - join_date

3. **Borrowing**
   - borrow_id (PK)
   - book_id (FK → Books)
   - member_id (FK → Members)
   - borrow_date
   - return_date

---

## SQL Scripts
1. `01_create_tables.sql` – Creates tables with constraints.  
2. `02_insert_data.sql` – Inserts sample data.  
3. `03_CRUD_queries.sql` – Demonstrates Create, Read, Update, Delete operations.  
4. `04_stored_procedures.sql` – Includes procedures to borrow and return books.

---

## How to Run
1. Create a PostgreSQL database (e.g., `library_db`).  
2. Run scripts in the following order:
   ```bash
   psql -U <username> -d library_db -f SQL/01_create_tables.sql
   psql -U <username> -d library_db -f SQL/02_insert_data.sql
   psql -U <username> -d library_db -f SQL/03_CRUD_queries.sql
   psql -U <username> -d library_db -f SQL/04_stored_procedures.sql
# Library-Management-System
