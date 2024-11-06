# lab-data-engineering-course
Practical support for the data engineering course


## Purpose
This lab contains all the necessary resources for the practical parts of the course.

It will be regularly updated.

You'll need docker desktop for this lab.

## Preamble for windows developers

1. Install scoop https://github.com/ScoopInstaller/Install#readme -- section *Typical Installation*
2. Install make `scoop install main/make`

OR USE WSL 2

### To do only once

Clone the repo on your machine `git clone https://github.com/esme-devops/lab-data-engineering-course.git`

## TLDR aka More about the environment

+ Enter into the folder `cd lab-data-engineering-course`

To run the postgres stack (with pgadmin) :
+ Start the postgres stack (with pgadmin) using `make start-postgres` -- Look at the log on Docker Desktop to see if any error happens...
+ Go to `localhost:8080` to use the pgadmin interface   
+ Stop the postgres stack using `make stop-postgres`

To run the mongo stack :
+ Start the mongo stack using `make start-mongo` -- Look at the log on Docker Desktop to see if any error happens...    
+ Go to `localhost:3000` to use the nosqlclient interface
+ Stop the mongo stack using `make stop-mongo`

## More about the postgres stack

You will use pgAdmin to design the queries.

### At each startup

Start the docker compose stack with postgres using `make start-postgres`  

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


## More about the mongo stack (with nosqlclient)

### To do each time

Start the docker compose stack with mongo using `make start-mongo`  

Go to `localhost:3000` to use the nosqlclient interface.

