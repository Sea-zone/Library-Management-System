-- READ: List all books
SELECT * FROM Books;

-- READ: List members with borrowed books
SELECT m.name AS member_name, b.title AS book_title, br.borrow_date
FROM Borrowing br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id;

-- CREATE: Add a new book
INSERT INTO Books (title, author, published_year, genre)
VALUES ('Brave New World', 'Aldous Huxley', 1932, 'Dystopian');

-- UPDATE: Update book genre
UPDATE Books
SET genre = 'Classic Fiction'
WHERE book_id = 1;

-- DELETE: Remove a borrowing record
DELETE FROM Borrowing
WHERE borrow_id = 2;
