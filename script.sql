--Que 1:
SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;


SELECT *
FROM books
LIMIT 10;

--Que 2:
SELECT *
FROM pg_Indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_Indexes
WHERE tablename = 'orders';

SELECT *
FROM pg_Indexes
WHERE tablename = 'books';

--Que 3:
CREATE INDEX order_id_idx ON orders (order_id);

CREATE INDEX customer_id_idx ON customers (customer_id);

CREATE INDEX book_id_idx ON books (book_id);

--Que 4:
EXPLAIN ANALYZE SELECT original_language, title, sales_in_millions
FROM books
WHERE original_language = 'French';


--Que 5:
SELECT pg_size_pretty (pg_total_relation_size('books'));


--Que 6:
CREATE INDEX books_original_language_title_sales_in_millions_idx ON books (original_language, title,sales_in_millions);


--Que 7:

SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;


SELECT *
FROM books
LIMIT 10;


SELECT *
FROM pg_Indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_Indexes
WHERE tablename = 'orders';

SELECT *
FROM pg_Indexes
WHERE tablename = 'books';


--Que 8:
DROP INDEX IF EXISTS books_original_language_title_sales_in_millions_idx;

--Que 9&10:

SELECT NOW();
 DROP INDEX order_id_idx;
\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;
 CREATE INDEX order_id_idx ON orders (order_id);
SELECT NOW();

--Que 11:
CREATE INDEX customers_first_name_email_address_idx ON customers (first_name, email_address);
