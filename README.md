# lab-data-engineering-course
Practical support for the data engineering course


## Purpose
This lab contains all the necessary resources for the practical parts of the course.

It will be regularly updated.

### To do only once

Clone the repo on your machine `git clone https://github.com/esme-devops/lab-data-engineering-course.git`

Navigate to the project folder: `cd lab-data-engineering-course`

### At each startup

Start the database `make start`  

### pgadmin configuration to use with postgres

1. Connect on http://localhost:8080 with your browser
Here is the logging information to use :
    User : admin@admin.fr
    Password : admin

2. Declare your postgresql database in pgadmin
Here are the parameters to use :
- General / name : postgres
- Connection / host : esme_postgresql
- Connection / port : 5432
- Connection / username : postgres
- Connection / password : 1234

3. Explore to query the database
You can use the query tool 
--> right click on the database / query tool

### Lab 1 
The goal of this is to manipulate SQL and to refresh previous year knowledges. 

First, you will use pgAdmin to design the queries.

When you finished, you will implement the queries in the API.

#### Queries to design

1. List all the suppliers with their details
2. List all the products with their prices and stock quantities
3. Find all the customers in a specific city (for example, "DC")
4. Display all the orders made in the last 30 days
5. Find the details of a specific product by its ID (for example, "dc8a6d03-4a68-4cf2-be1c-4a06607fbf99")
6. Find the average price of all products
7. Find the total stock quantity for a specific product (for example, "Product A")
8. List product name, product category and supplier name
9. Count all the products that have never been ordered
10. List customers who have never placed an order
11. Display the average price of products by category
12. Calculate the total revenue for each month in the current year
13. Find the product with the highest price in each category
14. Find the products whose price is above the average price of their own category
15. List the customers who have placed at least one order for a product priced at over 500
16. List the suppliers who have supplied products that have never been ordered
17. Calculate the rank of each product by price within its category (using RANK())
18. Display the top 5 customers who have spent the most money (using LIMIT)
19. Find the customers who have made the most orders
20. Find the suppliers who have supplied the most products

#### API
When you arrive this section, please reach me out :) 