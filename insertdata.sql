insert into customers(name,email,phone,address) values 
('Aditi','aditi@123.com','4356234635','Hyd'),
('Suhana','suhana@039.com','5672345690','Waynad'),
('Akshatha','aksta@122.com','9845345676','Bangluru');
insert into customers(name,email,phone,address) values 
('Divya','divya@456.com','5645755621','Chennai'),
('Srikari','sriakri@704.com','1034873002','Hyd'),
('Harini','harini@313.com','7289045628','Bangluru');
insert into customers(name,email,phone,address) values 
('Siddharth','siddu@785.com','8902356789','Pune'),
('Akhil','akhil@612.com','7902361235','Pune'),
('Nanda','nanda@099.com','9873012345','Pune');
insert into customers(name,email,phone,address) values 
('Aditya','adtiya@099.com','9876543210','Delhi'),
('Amaan','amaab@312.com','9876078123','Mumbai'),
('Srinivas','srinu@887.com','9764532198','Goa');
insert into products(name,description,price,stock_quantity,category)
values
('Laptop','15-inch display,i5 processor-HCL',77500.00,20,'electronic gadgets'),
('Airpods','Noise-Cancelling-Apple',93000.00,40,'electronic gadgets'),
('Smartphone','6.5-inch screen,125 GB-Galaxy',80000.00,35,'electronic gadgets');
insert into products(name,description,price,stock_quantity,category)
values
('Laptop','14-inch display,i6 processor-Dell',76900.00,10,'electronic gadgets'),
('Wrist Watch','A roseGold Colored stylish strap-Analogue',900.00,30,'accessories'),
('FaceSerum','Mamaearth Vitamin C Face Serum',350.00,70,'cosmetics'),
('Skipping Rope','Boldfit Skipping Rope for Men and Women Jumping Rope',340.00,20,'sports and fitness'),
('Car Air Freshener','Godrej areao hanging car air freshner',300,79,'cars and bikes'),
('LED serial light','Lexton 40 LED Power Pixel ',425,10,'home and kitchen');
insert into products(name,description,price,stock_quantity,category)
values

('Skipping Rope','Boldfit Skipping Rope for Men and Women Jumping Rope',340.00,20,'sports and fitness'),
('Car Air Freshener','Godrej areao hanging car air freshner',300,79,'cars and bikes'),
('LED serial light','Lexton 40 LED Power Pixel ',425,10,'home and kitchen');
insert into orders(customer_id,status,total_amount)
values
(1,'Confirmed',77500),
(2,'Shipped',93000),
(3,'Delivered',80000);
insert into orders(customer_id,status,total_amount)
values
(4,'Confirmed',76900),
(5,'Confirmed',900),
(6,'Delivered',350),
(7,'Delivered',340),
(8,'Shipped',300),
(9,'Delivered',425);
select * from orders;
insert into orders(customer_id,status,total_amount)
values
(10,'Confirmed',340),
(11,'Shipped',300),
(12,'Delivered',425);
insert into order_items(order_id,product_id,quantity,price_each)
values
(1,1,1,77500.00),(2,2,1,93000.00),(3,3,1,80000.00);
select * from order_items;
insert into order_items(order_id,product_id,quantity,price_each)
values
(4,4,1,76900.00),(5,5,1,900.00),(6,6,1,350.00),(7,7,2,340.00),
(8,8,1,300.00),(9,9,1,425.00);
insert into order_items(order_id,product_id,quantity,price_each)
values (10,10,1,340.00),
(11,11,1,300.00),(12,12,1,425.00);
insert into payments(order_id,payment_method,payment_status,amount_paid)
values
(1,'Credit Card','Paid',77500.00),
(2,'UPI','Paid',93000.00),
(3,'Cash on delivery','Pending',80000.00);
insert into payments(order_id,payment_method,payment_status,amount_paid)
values
(4,'UPI','Paid',76900.00),
(5,'UPI','Paid',900.00),
(6,'Cash on delivery','Paid',350.00),
(7,'Credit Card','Paid',340.00),
(8,'Cash on delivery','Pending',300.00),
(9,'Cash on delivery','Paid',425.00);
select * from payments; 
insert into payments(order_id,payment_method,payment_status,amount_paid)
values
(10,'UPI','Paid',900.00),
(11,'Cash on delivery','Paid',350.00),
(12,'Credit Card','Paid',340.00);