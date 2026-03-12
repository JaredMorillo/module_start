-- Create database
CREATE DATABASE expense_tracker;

-- Use database
USE expense_tracker;

-- Create categories table
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create expenses table
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    expense_date DATE NOT NULL,
    category_id INT,
    description VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Insert categories
INSERT INTO categories (name) 
VALUES ('Food'),
       ('Transport'),
       ('Entertainment'),
       ('Bills'),
       ('Shopping');

-- Insert expenses
INSERT INTO expenses (amount, expense_date, category_id, description)
VALUES (12.50, '2026-03-01', 1, 'Lunch'),
       (3.00, '2026-03-01', 2, 'Bus ticket'),
       (25.00, '2026-03-02', 3, 'Movie ticket'),
       (60.00, '2026-03-03', 4, 'Electric bill'),
       (18.75, '2026-03-04', 1, 'Dinner'),
       (40.00, '2026-03-05', 5, 'New shirt');

-- Select all expenses
SELECT * FROM expenses;

-- Select with category names using JOIN
SELECT 
    expenses.id,
    expenses.amount,
    expenses.expense_date,
    categories.name AS category,
    expenses.description
FROM expenses
JOIN categories
ON expenses.category_id = categories.id;

-- Update an expense
UPDATE expenses
SET amount = 14.00
WHERE id = 1;

-- Update description
UPDATE expenses
SET description = 'Lunch with friends'
WHERE id = 1;

-- Delete an expense
DELETE FROM expenses
WHERE id = 2;

-- Insert more data
INSERT INTO expenses (amount, expense_date, category_id, description)
VALUES (5.00, '2026-03-06', 2, 'Bus fare');

INSERT INTO expenses (amount, expense_date, category_id, description)
VALUES (70.00, '2026-03-07', 4, 'Internet bill');

INSERT INTO expenses (amount, expense_date, category_id, description)
VALUES (22.00, '2026-03-07', 1, 'Groceries');

-- Aggregate function: total spending
SELECT SUM(amount) AS total_spent
FROM expenses;

-- Aggregate function: total by category
SELECT 
    categories.name,
    SUM(expenses.amount) AS total_spent
FROM expenses
JOIN categories
ON expenses.category_id = categories.id
GROUP BY categories.name;

-- Count expenses
SELECT COUNT(*) AS total_expenses
FROM expenses;

-- Average expense
SELECT AVG(amount) AS average_expense
FROM expenses;

-- Filter by date range
SELECT *
FROM expenses
WHERE expense_date
BETWEEN '2026-03-01' AND '2026-03-07';

-- Filter by category
SELECT *
FROM expenses
WHERE category_id = 1;

-- Order by amount
SELECT *
FROM expenses
ORDER BY amount DESC;

-- Order by date
SELECT *
FROM expenses
ORDER BY expense_date ASC;

-- Show latest expense
SELECT *
FROM expenses
ORDER BY expense_date DESC
LIMIT 1;