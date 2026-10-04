-- ============================================================
-- 1. TOTAL NUMBER OF BOOKS
-- ============================================================

SELECT
    COUNT(*) AS total_books
FROM books;


-- ============================================================
-- 2. TOTAL NUMBER OF CUSTOMERS
-- ============================================================

SELECT
    COUNT(*) AS total_customers
FROM customers;


-- ============================================================
-- 3. TOTAL NUMBER OF ORDERS
-- ============================================================

SELECT
    COUNT(*) AS total_orders
FROM orders;


-- ============================================================
-- 4. TOTAL NUMBER OF BOOKS SOLD
-- ============================================================

SELECT
    SUM(quantity) AS total_books_sold
FROM orders;


-- ============================================================
-- 5. AVAILABLE BOOK GENRES
-- ============================================================

SELECT DISTINCT
    genre
FROM books
ORDER BY genre;


-- ============================================================
-- 6. NUMBER OF BOOKS IN EACH GENRE
-- ============================================================

SELECT
    genre,
    COUNT(*) AS number_of_books
FROM books
GROUP BY genre
ORDER BY number_of_books DESC;


-- ============================================================
-- 7. AVERAGE BOOK PRICE
-- ============================================================

SELECT
    ROUND(AVG(price), 2) AS average_book_price
FROM books;


-- ============================================================
-- 8. MINIMUM AND MAXIMUM BOOK PRICE
-- ============================================================

SELECT
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM books;


-- ============================================================
-- 9. NUMBER OF CUSTOMERS BY COUNTRY
-- ============================================================

SELECT
    country,
    COUNT(*) AS number_of_customers
FROM customers
GROUP BY country
ORDER BY number_of_customers DESC;


-- ============================================================
-- 10. NUMBER OF CUSTOMERS BY CITY
-- ============================================================

SELECT
    city,
    COUNT(*) AS number_of_customers
FROM customers
GROUP BY city
ORDER BY number_of_customers DESC;


-- ============================================================
-- 11. ORDERS BY YEAR
-- ============================================================

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    COUNT(*) AS total_orders
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY order_year;


-- ============================================================
-- 12. ORDERS BY MONTH
-- ============================================================

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;


-- ============================================================
-- 13. AVERAGE ORDER QUANTITY
-- ============================================================

SELECT
    ROUND(AVG(quantity), 2) AS average_order_quantity
FROM orders;


-- ============================================================
-- 14. MINIMUM AND MAXIMUM ORDER QUANTITY
-- ============================================================

SELECT
    MIN(quantity) AS minimum_quantity,
    MAX(quantity) AS maximum_quantity
FROM orders;


-- ============================================================
-- 15. CUSTOMERS WHO HAVE PLACED ORDERS
-- ============================================================

SELECT
    COUNT(DISTINCT customer_id) AS customers_with_orders
FROM orders;


-- ============================================================
-- 16. BOOKS THAT HAVE BEEN ORDERED
-- ============================================================

SELECT
    COUNT(DISTINCT book_id) AS books_ordered
FROM orders;


-- ============================================================
-- 17. BOOKS THAT HAVE NEVER BEEN ORDERED
-- ============================================================

SELECT
    COUNT(*) AS books_never_ordered
FROM books b
LEFT JOIN orders o
    ON b.book_id = o.book_id
WHERE o.book_id IS NULL;


-- ============================================================
-- END OF BASIC ANALYSIS
-- ============================================================
