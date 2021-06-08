# Problem Statement

1. Source database : You are given a Dockerfile to build a postgres image. 
There is a seed.sql that has DDL and DML statements to seed the data for the source   database. Build the image using the provided Dockerfile and launch a container and name it as Rest. Please see below a ERD diagram to see the relationships between the entities from the source database.

2. Destination database: You are given a Dockerfile to build a postgres image for the destination database. 
3. A seed.sql file is also provided that contains DDL statement to create the destination database.<br/>
4. Write a program that does the following

 - extracts all the data from all the tables from the source database.

 - transform and load it to the table in destination database.
5. Following are the constraints that the ETL should follow

 - ETL should be written in C#

 - If the ETL is ran multiple times, it should not create duplicate data in the destination table.

# ERD
![image](https://user-images.githubusercontent.com/660816/121228627-f8b2a080-c85a-11eb-8db9-fa5b6d932876.png)
