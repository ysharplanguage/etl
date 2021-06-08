# Problem Statement
### You have to write a ETL process to move data from source databases to the destination database.
1. Source database : There are two source databases named Rest and Soap.
 You are given a Dockerfile to build a postgres image for both these databases.
 There is a seed.sql that has DDL and DML statements to seed the data for the source databases. 
  - For [Rest](https://github.com/chax0r/etl/tree/master/images/Rest), build the image using the provided Dockerfile and launch a container and name it as Rest. 
  - For [Soap](https://github.com/chax0r/etl/tree/master/images/Soap), build the image using the provided Dockerfile and launch a container and name it as Soap.
  Please see below a ERD diagram to see the relationships between the entities from the source database.

2. Destination database: You are given a [Dockerfile](https://github.com/chax0r/etl/tree/master/images/Warehouse) to build a postgres image for the destination database. 
3. A seed.sql file is also provided that contains DDL statement to create the destination database.
   Create an image using the provided Docker file and launch a container named DataWarehouse.

4. Write a program that does the following

 - extracts all the data from all the tables from the source database.

 - transform and load it to the table in destination database.
5. Following are the constraints that the ETL should follow

 - ETL should be written in C#
 - If the ETL is ran multiple times, it should not create duplicate data in the destination table.
 - The ETL has "read only" access to the source databases.

# ERD
![image](https://user-images.githubusercontent.com/660816/121228627-f8b2a080-c85a-11eb-8db9-fa5b6d932876.png)

# Submission details
1. You need to provide the source code. 
  + Clone this github repo
  + Create a feature branch (name it whatever you want) off of master.
  + Create a src directory under the root directory and add all the source code in there.
2. Provide a design document
3. **Bonus Points** if you provide a Dockerfile to create an image of your solution.

