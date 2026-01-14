mysql>  CREATE DATABASE bhagyoday118;
Query OK, 1 row affected (0.18 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| bhagyoday118       |
| college            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.17 sec)

mysql> USE bhagyoday118;
Database changed
mysql> CREATE TABLE student;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE student(Rno INT, Name VARCHAR(30), Class VARCHAR(5), Marks FLOAT, DOB DATE);
Query OK, 0 rows affected (0.10 sec)

mysql> SHOW TABLES;
+------------------------+
| Tables_in_bhagyoday118 |
+------------------------+
| student                |
+------------------------+
1 row in set (0.05 sec)

mysql> DESC student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| Rno   | int         | YES  |     | NULL    |       |
| Name  | varchar(30) | YES  |     | NULL    |       |
| Class | varchar(5)  | YES  |     | NULL    |       |
| Marks | float       | YES  |     | NULL    |       |
| DOB   | date        | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> DESC student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| Rno   | int         | YES  |     | NULL    |       |
| Name  | varchar(30) | YES  |     | NULL    |       |
| Class | varchar(5)  | YES  |     | NULL    |       |
| Marks | float       | YES  |     | NULL    |       |
| DOB   | date        | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.04 sec)