-- Insert sample books
INSERT INTO Books (title, author, published_year, genre)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
('1984', 'George Orwell', 1949, 'Dystopian'),
('To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction');

-- Insert sample members
INSERT INTO Members (name, email, phone)
VALUES 
('Alice Johnson', 'alice@example.com', '9800000001'),
('Bob Smith', 'bob@example.com', '9800000002'),
('Charlie Brown', 'charlie@example.com', '9800000003');

-- Insert sample borrowing records
INSERT INTO Borrowing (book_id, member_id, borrow_date)
VALUES 
(1, 1, '2025-11-01'),
(2, 2, '2025-11-05');
