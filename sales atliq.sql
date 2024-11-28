-- 1.Show all customer records
SELECT * FROM customers;

-- 2.Show total number of customers
SELECT count(*) FROM customers;

-- 3.Show transactions for Chennai market (market code for chennai is Mark001
SELECT 
    *
FROM
    transactions
WHERE
    market_code = 'Mark001';

-- 4.Show distrinct product codes that were sold in chennai
SELECT DISTINCT
    product_code
FROM
    transactions
WHERE
    market_code = 'Mark001';

-- 5.Show transactions where currency is US dollars
  SELECT 
    *
FROM
    transactions
WHERE
    currency = 'USD';

-- 6.Show transactions in 2020 join by date table
   SELECT 
    transactions.*, date.*
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020;

-- 7.Show total revenue in year 2020
 SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.currency = 'INR'
        OR transactions.currency = 'USD';
	
-- 8.Show total revenue in year 2020, January Month,
  SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND date.month_name = 'January'
        AND (transactions.currency = 'INR'
        OR transactions.currency = 'USD');

-- 9. Show total revenue in year 2020 in Chennai

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.market_code = 'Mark001';

