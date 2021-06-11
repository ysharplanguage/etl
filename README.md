# Problem Statement
### You have to write a ETL process to move data from the source databases to the destination database.
1. Source database : There are two source databases named Gold and Diamonds.
 You are given a Dockerfile to build a postgres image for both these databases.
 There is a seed.sql that has DDL and DML statements to seed the data for the source databases. 
  - For [Gold](https://github.com/chax0r/etl/tree/master/images/Gold), build the image using the provided Dockerfile and launch a container and name it as gold. 
  - For [Diamonds](https://github.com/chax0r/etl/tree/master/images/Diamonds), build the image using the provided Dockerfile and launch a container and name it as diamonds.
  Please see below a ERD diagram to see the relationships between the entities from the source database.

2. Destination database: You are given a [Dockerfile](https://github.com/chax0r/etl/tree/master/images/Warehouse) to build a postgres image for the destination database. 
3. A seed.sql file is also provided that contains DDL statement to create the destination database.
   Create an image using the provided Docker file and launch a container named warehouse.

4. Write a program that does the following

 - extracts all the data from all the tables from the source databases {gold, diamonds}.

 - transform and load it to the table in destination database {warehouse}.
5. Following are the constraints that the ETL should follow

 - ETL should be written in C#
 - If the ETL is ran multiple times, it **should not create duplicate data** in the destination table.
 - The ETL has "read only" access to the source databases.

# ERD
![image](https://user-images.githubusercontent.com/660816/121228627-f8b2a080-c85a-11eb-8db9-fa5b6d932876.png)

# Submission details
1. You need to provide well documented source code of the ETL process. 
  + Fork this github repo using your github account
  + Create a feature branch (name it whatever you want) off of master.
  + Create a src directory under the root directory and add all the source code in there.
  + Push all your changes to the forked repo.
2. Project should have unit tests (you can use any unit test framework)
3. Provide a design document
4. Provide clear instructions describing how to run your solution.
5. **Bonus Points** if you provide a Dockerfile to create an image of your solution. Please add the Dockerfile inside the images directory
6. Email the link to your forked repo containing the solution.

