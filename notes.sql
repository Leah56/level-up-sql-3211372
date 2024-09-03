-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

--8/8/24 Provide a list of customers first names, last names, and emails in alphabetical order by last name.
SELECT FirstName, LastName, Email FROM Customers ORDER BY LastName ASC;

--9/3/24 Create a report showing how many books were published each year (with only one copy of books that there are multiples of),
-- and the years with the most titles published at the top of the list.
-- Create a second report that shows the 5 book titles that have been checked out the most.

SELECT * FROM Books;



