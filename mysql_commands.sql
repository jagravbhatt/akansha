mysql> create database student;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    10
Current database: *** NONE ***

Query OK, 1 row affected (0.730 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| akanksha           |
| information_schema |
| mysql              |
| performance_schema |
| student            |
| studentdb          |
| sys                |
| users              |
+--------------------+
8 rows in set (0.412 sec)

mysql> use student
Database changed
mysql> create table student{
    -> student_id INT PRIMARY KEY,
    -> student_Name VARCHAR(50),
    -> age INT,
    -> gender VARCHAR(10),
    -> couse VARCHAR(20),
    -> city VARCHAR(30),
    -> marks INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '{
student_id INT PRIMARY KEY,
student_Name VARCHAR(50),
age INT,
gender VARCHAR(' at line 1
mysql> CREATE TABLE Student (
    ->     student_id INT PRIMARY KEY,
    ->     student_name VARCHAR(50),
    ->     age INT,
    ->     gender VARCHAR(10),
    ->     course VARCHAR(50),
    ->     city VARCHAR(50),
    ->     marks INT
    -> );
Query OK, 0 rows affected (0.196 sec)

mysql> show tables
    -> ;
+-------------------+
| Tables_in_student |
+-------------------+
| student           |
+-------------------+
1 row in set (0.385 sec)

mysql> select * from students;
ERROR 1146 (42S02): Table 'student.students' doesn't exist
mysql> select * from student;
Empty set (0.723 sec)

mysql> INSERT INTO student
    -> (student_id ,student_name,age,gender,course,city,marks)
    -> values
    -> (1.'akanksha',19,'female','b.tech','nagpur',99),
    -> (2.'jagrav',20,'male','M.tech','ahmedabad',89),
    -> (3.'priya',23,'female','BCA','jaipur',70),
    -> (4.'dhaval',34,'male','mca','mumbai',79),
    -> (5.'tejas',10,'male','phd','usaipur',50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''akanksha',19,'female','b.tech','nagpur',99),
(2.'jagrav',20,'male','M.tech','ah' at line 4
mysql> INSERT INTO Student
    -> (student_id, student_name, age, gender, course, city, marks)
    -> VALUES
    -> (1, 'akanksha', 19, 'female', 'B.Tech', 'nagpur', 99),
    -> (2, 'jagrav', 20, 'male', 'M.Tech', 'ahmedabad', 95),
    -> (3, 'rahul', 21, 'male', 'BCA', 'surat', 85),
    -> (4, 'priya', 20, 'female', 'BCA', 'vadodara', 90),
    -> (5, 'amit', 22, 'male', 'MCA', 'rajkot', 78);
Query OK, 5 rows affected (0.436 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+--------------+------+--------+--------+-----------+-------+
| student_id | student_name | age  | gender | course | city      | marks |
+------------+--------------+------+--------+--------+-----------+-------+
|          1 | akanksha     |   19 | female | B.Tech | nagpur    |    99 |
|          2 | jagrav       |   20 | male   | M.Tech | ahmedabad |    95 |
|          3 | rahul        |   21 | male   | BCA    | surat     |    85 |
|          4 | priya        |   20 | female | BCA    | vadodara  |    90 |
|          5 | amit         |   22 | male   | MCA    | rajkot    |    78 |
+------------+--------------+------+--------+--------+-----------+-------+
5 rows in set (0.009 sec)

mysql> select age from student;
+------+
| age  |
+------+
|   19 |
|   20 |
|   21 |
|   20 |
|   22 |
+------+
5 rows in set (0.011 sec)

mysql> select gender from student;
+--------+
| gender |
+--------+
| female |
| male   |
| male   |
| female |
| male   |
+--------+
5 rows in set (0.007 sec)

mysql> select course, city from student;
+--------+-----------+
| course | city      |
+--------+-----------+
| B.Tech | nagpur    |
| M.Tech | ahmedabad |
| BCA    | surat     |
| BCA    | vadodara  |
| MCA    | rajkot    |
+--------+-----------+
5 rows in set (0.011 sec)

mysql> select id from student;
ERROR 1054 (42S22): Unknown column 'id' in 'field list'
mysql> select student_id from student;
+------------+
| student_id |
+------------+
|          1 |
|          2 |
|          3 |
|          4 |
|          5 |
+------------+
5 rows in set (0.005 sec)

mysql> select student_Name from student;
+--------------+
| student_Name |
+--------------+
| akanksha     |
| jagrav       |
| rahul        |
| priya        |
| amit         |
+--------------+
5 rows in set (0.004 sec)

mysql> select marks from student;
+-------+
| marks |
+-------+
|    99 |
|    95 |
|    85 |
|    90 |
|    78 |
+-------+
5 rows in set (0.006 sec)

mysql>