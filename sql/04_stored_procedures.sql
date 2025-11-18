-- Stored procedure to borrow a book
CREATE OR REPLACE PROCEDURE borrow_book(p_book_id INT, p_member_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Borrowing (book_id, member_id, borrow_date)
    VALUES (p_book_id, p_member_id, CURRENT_DATE);
END;
$$;

-- Stored procedure to return a book
CREATE OR REPLACE PROCEDURE return_book(p_borrow_id INT, p_return_date DATE)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Borrowing
    SET return_date = p_return_date
    WHERE borrow_id = p_borrow_id;
END;
$$;
