copy (select * from categories) to 'D:\northwind\exp\categories.csv' WITH CSV header;             
copy (select * from customers) to 'D:\northwind\exp\customers.csv' WITH CSV header;               
copy (select * from employees) to 'D:\northwind\exp\employees.csv' WITH CSV header;               
copy (select * from employee_territories) to 'D:\northwind\exp\employee_territories.csv' WITH CSV header;    
copy (select * from orders_details) to 'D:\northwind\exp\orders_details.csv' WITH CSV header;           
copy (select * from orders) to 'D:\northwind\exp\orders.csv' WITH CSV header;                  
copy (select * from products) to 'D:\northwind\exp\products.csv' WITH CSV header;                
copy (select * from regions) to 'D:\northwind\exp\regions.csv' WITH CSV header;                 
copy (select * from shippers) to 'D:\northwind\exp\shippers.csv' WITH CSV header;                
copy (select * from suppliers) to 'D:\northwind\exp\suppliers.csv' WITH CSV header;               
copy (select * from territories) to 'D:\northwind\exp\territories.csv' WITH CSV header;          

COPY (SELECT * FROM orders
      LEFT OUTER JOIN orders_details ON orders_details.OrderID = orders.OrderID) TO 'D:\northwind\exp\orders.csv' WITH CSV header;   