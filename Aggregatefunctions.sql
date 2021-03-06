/*********************************************************************************************************/
/* Aggregate functions */
/* Write a SQL statement to find the total purchase amount of all orders.*/
SELECT sum(purch_amt) FROM orders; 

/*Write a SQL statement to find the average purchase amount of all orders. */
SELECT AVG(purch_amt) from orders; 

/* Write a SQL statement to find the number of salesmen currently listing for all of their customers. */
SELECT COUNT(DISTINCT salesman_id) from orders; 

/*Write a SQL statement know how many customer have listed their names. */
SELECT COUNT(DISTINCT CUST_NAME) FROM CUSTOMER; 
/* OR */
SELECT COUNT(*) FROM CUSTOMER; 

/* Write a SQL statement to get the maximum purchase amount of all the orders. */
SELECT MAX(purch_amt) FROM orders; 

/*Write a SQL statement to get the minimum purchase amount of all the orders. */
SELECT MIN(purch_amt) FROM orders;

/* Write a SQL statement which selects the highest grade for each of the cities of the customers. */
SELECT city,max(grade) from customer group by city; 


/* Write a SQL statement to find the highest purchase amount ordered by the each customer with their ID and 
highest purchase amount.*/
select customer_id, max(purch_amt) as Max_purch from orders group by customer_id; 

/* Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date 
with their ID, order date and highest purchase amount.*/
select customer_id, ord_date, max(purch_amt) as Max_Purh from orders group by customer_id, ord_date;


/* Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.*/

SELECT salesman_id, max(purch_amt) as Max_Purch from orders where ord_date ='2012-08-17' group by salesman_id; 


/*Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers
who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.*/
SELECT customer_id, ord_date, max(purch_amt) as Max_purch from orders where purch_amt in (2000,3000,5760,6000)
group by customer_id, ord_date;
