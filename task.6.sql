-- Get titles of books that have never been borrowed
SELECT Title
FROM Book
WHERE BookID NOT IN (
    SELECT BookID FROM Loan
);


-- Get books that were published after the average publication year
SELECT Title, YearPublished
FROM Book
WHERE YearPublished > (
    SELECT AVG(YearPublished) FROM Book
);


-- Show each member's name along with their most recent loan date
SELECT Name,
       (SELECT MAX(LoanDate) FROM Loan WHERE MemberID = m.MemberID) AS LastLoanDate
FROM Member m;


-- Show the newest book(s) based on the most recent publication year
SELECT Title, YearPublished
FROM Book
WHERE YearPublished = (
    SELECT MAX(YearPublished) FROM Book
);


-- Show each book with total number of books in the library as a reference
SELECT Title,
       (SELECT COUNT(*) FROM Book) AS TotalBooks
FROM Book;


-- List names of members with more than 2 loans
SELECT Name
FROM Member m
WHERE (
    SELECT COUNT(*) FROM Loan l WHERE l.MemberID = m.MemberID
) > 2;


-- Show only those members who have any loan record
SELECT Name
FROM Member m
WHERE EXISTS (
    SELECT 1 FROM Loan l WHERE l.MemberID = m.MemberID
);


-- List members who have never borrowed a book
SELECT Name
FROM Member m
WHERE NOT EXISTS (
    SELECT 1 FROM Loan l WHERE l.MemberID = m.MemberID
);


-- Get names of members who borrowed 'The Great Gatsby'
SELECT Name
FROM Member
WHERE MemberID IN (
    SELECT MemberID FROM Loan
    WHERE BookID = (
        SELECT BookID FROM Book WHERE Title = 'The Great Gatsby'
    )
);


-- Show member names and how many books each has borrowed
SELECT 
    Name,
    (SELECT COUNT(*) FROM Loan l WHERE l.MemberID = m.MemberID) AS TotalLoans
FROM Member m;
