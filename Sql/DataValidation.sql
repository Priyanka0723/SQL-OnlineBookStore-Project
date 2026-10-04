-- ============================================================
-- 1. CHECK TOTAL RECORDS
-- ============================================================

SELECT COUNT(*) AS total_books
FROM books;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_orders
FROM orders;


-- ============================================================
-- 2. CHECK FOR DUPLICATE PRIMARY KEYS
-- ============================================================

-- Check duplicate Book IDs
SELECT
    book_id,
    COUNT(*) AS duplicate_count
FROM books
GROUP BY book_id
HAVING COUNT(*) > 1;


-- Check duplicate Customer IDs
SELECT
    customer_id,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Check duplicate Order IDs
SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;


-- ============================================================
-- 3. CHECK FOR NULL VALUES
-- ============================================================

-- Books table
SELECT
    COUNT(*) FILTER (WHERE book_id IS NULL) AS null_book_id,
    COUNT(*) FILTER (WHERE title IS NULL) AS null_title,
    COUNT(*) FILTER (WHERE author IS NULL) AS null_author,
    COUNT(*) FILTER (WHERE genre IS NULL) AS null_genre
FROM books;


-- Customers table
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE name IS NULL) AS null_name,
    COUNT(*) FILTER (WHERE email IS NULL) AS null_email
FROM customers;


-- Orders table
SELECT
    COUNT(*) FILTER (WHERE order_id IS NULL) AS null_order_id,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE book_id IS NULL) AS null_book_id
FROM orders;


-- ============================================================
-- 4. CHECK INVALID VALUES
-- ============================================================

-- Check books with invalid price
SELECT *
FROM books
WHERE price < 0;


-- Check orders with invalid quantity
SELECT *
FROM orders
WHERE quantity <= 0;


-- ============================================================
-- 5. CHECK REFERENTIAL INTEGRITY
-- ============================================================

-- Orders containing a customer_id that does not exist
SELECT o.*
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- Orders containing a book_id that does not exist
SELECT o.*
FROM orders o
LEFT JOIN books b
    ON o.book_id = b.book_id
WHERE b.book_id IS NULL;


-- ============================================================
-- 6. CHECK DATE VALUES
-- ============================================================

-- Check orders with missing dates
SELECT *
FROM orders
WHERE order_date IS NULL;


-- Check future-dated orders
SELECT *
FROM orders
WHERE order_date > CURRENT_DATE;


-- ============================================================
-- 7. CHECK FOR UNUSUAL VALUES
-- ============================================================

-- Check books with zero or negative prices
SELECT *
FROM books
WHERE price <= 0;


-- Check unusually large order quantities
SELECT *
FROM orders
WHERE quantity > 100;


-- ============================================================
-- 8. BASIC DATA SUMMARY
-- ============================================================

SELECT
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    ROUND(AVG(price), 2) AS average_price
FROM books;


SELECT
    MIN(quantity) AS minimum_quantity,
    MAX(quantity) AS maximum_quantity,
    ROUND(AVG(quantity), 2) AS average_quantity
FROM orders;


-- ============================================================
-- END OF DATA VALIDATION
-- ============================================================


