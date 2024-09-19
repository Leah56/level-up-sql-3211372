-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

--8/8/24 Provide a list of customers first names, last names, and emails in alphabetical order by last name.
SELECT FirstName, LastName, Email 
FROM Customers 
ORDER BY LastName ASC;



--9/3/24 Create a table to store new info about customers (how many people they'll have in their party)
CREATE TABLE rsvps (
rsvps_CustomerID INTEGER REFERENCES Customers(CustomerID),
party_size INTEGER
);

INSERT INTO rsvps VALUES (1, 2);
SELECT * FROM rsvps;
DELETE FROM rsvps WHERE rsvps_CustomerID=1;


--Create three menus: 1. all items sorted by price lowest to highest 
-- 2. only appetizers and beverages (sorted by type of dish)
-- 3. all items except beverages (sorted by type of dish)
SELECT Type, Name, Price, Description FROM Dishes
ORDER BY Price ASC;

SELECT Type, Name, Price, Description FROM Dishes
WHERE Type='Appetizer' OR Type='Beverage'
ORDER BY Type ASC;

SELECT Type, Name, Price, Description FROM Dishes
WHERE Type !='Beverage'
ORDER BY Type ASC;

--"Sign a customer up for a loyalty program" (Difficulty 2)
--Add customer info to the customers table (INSERT) to the specific columns (don't have to add all the columns)
INSERT INTO Customers (FirstName, LastName, Email, Address, City, State, Phone, Birthday) VALUES ('Anna', 'Smith','asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '555-555-1212', '1973-07-21');
SELECT * FROM Customers
ORDER BY CustomerID DESC;

--Update a customer's personal info (Difficulty 2)
SELECT * FROM Customers 
WHERE LastName='Jenkins' AND FirstName='Taylor' AND Address='27170 6th Ave.';

UPDATE Customers 
SET Address='74 Pine St.' 
WHERE LastName='Jenkins' AND FirstName='Taylor' AND Address='27170 6th Ave.';

SELECT * FROM Customers 
WHERE LastName='Jenkins' AND FirstName='Taylor';

UPDATE Customers 
SET City='New York',
    State='NY'
WHERE LastName='Jenkins' AND FirstName='Taylor' AND Address='74 Pine St.';

SELECT * FROM Customers 
WHERE LastName='Jenkins' AND FirstName='Taylor';

--Remove info from the database (difficulty 2)
SELECT * FROM Customers
WHERE FirstName='Norby'
      OR LastName='Norby'; --determined he is CustomerID 64
SELECT * FROM Reservations WHERE CustomerID=64; --determined his reservation is ID 2000
DELETE FROM Reservations WHERE ReservationID=2000;
SELECT * FROM Reservations WHERE CustomerID=64; --reservation 2000 is gone


--9/19/24 Log customer responses to an invitation (Difficulty 2)
--First, get the CustomerID from the customer table, using the email
INSERT INTO rsvps(rsvps_CustomerID, party_size)
VALUES(
      (SELECT CustomerID 
       FROM Customers
       WHERE Email='atapley2j@kinetecoinc.com'),
      4);

SELECT * FROM rsvps;

--Look up reservations

-- Create a report showing how many books were published each year (with only one copy of books that there are multiples of),
-- and the years with the most titles published at the top of the list.
-- Create a second report that shows the 5 book titles that have been checked out the most.

SELECT * FROM Books;



