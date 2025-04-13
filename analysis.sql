show tables;

select * from customers;
select * from products;
select * from orders;
select * from order_items;
select * from payments;

select name,email from customers;

select * from products where price>50000;

select name from products where price>80000;

select * from customers where address='Waynad';

select * from orders where status='Delivered';

select p.name,oi.quantity
from order_items oi join products p 
on oi.product_id=p.product_id
where oi.order_id=1;

update orders set status='Shipped' where order_id=3;

select * from customers where address='Pune';

select * from products where price<50000;

select c.name,o.total_amount from customers c join orders o 
on c.customer_id=o.customer_id
where total_amount>75000;

select * from orders where status='Delivered';

select p.name,oi.quantity from order_items oi join products p
on oi.product_id=p.product_id where oi.order_id=1;

select c.name,o.order_id,o.status,o.total_amount from customers c
join orders o on c.customer_id=o.customer_id;

select c.name,o.status,p.payment_status
from customers c join orders o on c.customer_id=o.customer_id
join payments p on o.order_id=p.order_id 
where o.status='Shipped'
and p.payment_method='Cash on delivery'
and p.payment_status='Pending';

select Sum(amount_paid) as total_revenue from
payments where payment_status='paid';

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name desc;

select name,price from products
order by price desc limit 3;

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 1;

select address,count(*) as customercount from customers group by
address;

select c.name,o.status,p.payment_status from
orders o join customers c on o.customer_id=c.customer_id
join payments p on o.order_id=p.order_id
where o.status!='Delivered' and p.payment_status!='Paid';

select * from customers where address='Hyd';

select * from products where price>10000; 

select * from products where price=80000;

select * from products where price!=80000;

select * from products where price=100;

select * from payments where payment_method='Credit Card' and payment_status='Paid';

select * from payments where payment_method='Credit Card' or payment_status='Paid';

select * from payments where payment_status='Paid' or payment_method='Credit Card';

select * from products order by price desc;

select * from customers where address='PUNE' limit 2; 

select distinct address from customers;

select * from customers where address in ('kolkata','Chennai');

select * from customers where address 

not in('Chennai','Pune','Hyd','Bengaluru');

update customers set address='Bengaluru' where customer_id=6;

select * from customers where address='Bengaluru';

SELECT * FROM products WHERE price BETWEEN 500 AND 1500;

SELECT * FROM customers WHERE email LIKE '%@gmail.com';

SELECT * FROM customers WHERE email LIKE '%9@.com';

select * from payments where payment_date is null;

select name as fname, address as location from customers limit 7;

select count(*) from orders where status='Delivered';

select avg(price) from products where category='electronic gadgets';

select address,count(*) as total_customers from customers group by address;

select address,count(*) as total_customers
from customers
group by address
having count(*)>1;

SELECT o.order_id, c.name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

select c.name,o.order_id from customers c left join orders o on c.customer_id=o.customer_id;

select * from products
where price>(select avg(price) from products);

select name,price,
case
when price>10000 then 'Expensive' else 'Affordable' end as
price_category from products;

select name from customers union select name from products;

SELECT * FROM customers c
WHERE EXISTS (
  SELECT 1 FROM orders o
  WHERE o.customer_id = c.customer_id
);

WITH top_customers AS (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(*) > 1
)
SELECT name,t.order_count
FROM top_customers t
JOIN customers c ON c.customer_id = t.customer_id;

SELECT customer_id, order_id,
  ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) AS order_rank
FROM orders;