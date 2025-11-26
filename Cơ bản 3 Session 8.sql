-- Sử dụng Sum
SELECT SUM(pages) AS total_pages_in_library
FROM Books;
-- Sử dụng Count
SELECT COUNT(book_id) AS total_books
FROM Books;
-- Sử dụng AVG
SELECT AVG(pages) AS average_pages_per_book
FROM Books;
-- Sử dụng Min và Max
SELECT MIN(publication_year) AS oldest_book_year
FROM Books;
SELECT MAX(publication_year) AS newest_book_year
FROM Books;
SELECT MIN(borrow_date) AS first_borrow_date
FROM BorrowingRecords;
-- Kết hợp với Where
SELECT COUNT(book_id) AS books_after_2000
FROM Books
WHERE publication_year > 2000;