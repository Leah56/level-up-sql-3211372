-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

--8/8/24 Provide a list of customers first names, last names, and emails in alphabetical order by last name.
SELECT FirstName, LastName, Email FROM Customers ORDER BY LastName ASC;





