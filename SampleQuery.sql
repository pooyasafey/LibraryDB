-- List all books
SELECT * FROM Books;

-- Find books by title
SELECT * FROM Books WHERE title LIKE '%search term%';

-- List all loans
SELECT * FROM Loans;

-- Find overdue loans
SELECT * FROM Loans WHERE due_date < CURRENT_DATE AND returned_on IS NULL;

-- Find all loans for a specific member
SELECT * FROM Loans L
JOIN Members M ON L.member_id = M.member_id
WHERE M.name = 'Member Name';
