# Atliq-Hardware-sales
### Data Analysis Using SQL

1. Show all customer records

    ```sql
   SELECT * FROM customers;
    ```

1. Show total number of customers

    ```sql
   SELECT count(*) FROM customers;
    ```

1. Show transactions for Chennai market (market code for chennai is Mark001

    ```sql
    SELECT * FROM transactions where market_code='Mark001';
    ```

1. Show distrinct product codes that were sold in chennai

    ```sql
   SELECT distinct product_code FROM transactions where market_code='Mark001';
    ```

1. Show transactions where currency is US dollars

    ```sql
   SELECT * from transactions where currency="USD"
    ```

1. Show transactions in 2020 join by date table

    ```sql
   SELECT transactions.*, date.* FROM transactions
     INNER JOIN
     date ON transactions.order_date=date.date
    where date.year=2020;
    ```

1. Show total revenue in year 2020,

    ```sql
   SELECT SUM(transactions.sales_amount) FROM transactions
     INNER JOIN date ON transactions.order_date=date.date
    where
    date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";
    ```
	
1. Show total revenue in year 2020, January Month,

    ```sql
   SELECT SUM(transactions.sales_amount) FROM transactions
    INNER JOIN
    date ON transactions.order_date=date.date
    where
     date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");
    ```

1. Show total revenue in year 2020 in Chennai

    ```sql
    SELECT SUM(transactions.sales_amount) FROM transactions
     INNER JOIN
    date ON transactions.order_date=date.date where date.year=2020
     and
    transactions.market_code="Mark001";
    ```

