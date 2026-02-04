mysql> INSERT INTO student VALUES (107, Rushi, SY, 99.9, 2007-04-25);
ERROR 1054 (42S22): Unknown column 'Rushi' in 'field list'
mysql> INSERT INTO student VALUES ('107', 'Rushi', 'SY', '99.9', '2007-04-25');
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO student VALUES ('115', 'Aditya', 'SY', '90', '2006-06-01');
Query OK, 1 row affected (0.06 sec)

mysql> SELECT * FROM student;
+------+--------+-------+-------+------------+
| Rno  | Name   | Class | Marks | DOB        |
+------+--------+-------+-------+------------+
|  107 | Rushi  | SY    |  99.9 | 2007-04-25 |
|  115 | Aditya | SY    |    90 | 2006-06-01 |
+------+--------+-------+-------+------------+
2 rows in set (0.05 sec)

mysql> SELECT Rno, Marks FROM student;
+------+-------+
| Rno  | Marks |
+------+-------+
|  107 |  99.9 |
|  115 |    90 |
+------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO student VALUES ('100', 'Aadesh', 'SY', '95', '2004-09-32');
ERROR 1292 (22007): Incorrect date value: '2004-09-32' for column 'DOB' at row 1
mysql> INSERT INTO student VALUES ('100', 'Aadesh', 'SY', '95', '2004-09-30');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM student;
+------+--------+-------+-------+------------+
| Rno  | Name   | Class | Marks | DOB        |
+------+--------+-------+-------+------------+
|  107 | Rushi  | SY    |  99.9 | 2007-04-25 |
|  115 | Aditya | SY    |    90 | 2006-06-01 |
|  100 | Aadesh | SY    |    95 | 2004-09-30 |
+------+--------+-------+-------+------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO student VALUES ('118', 'Bhagyoday', 'SY', '0.0', '2005-11-03');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM student;
+------+-----------+-------+-------+------------+
| Rno  | Name      | Class | Marks | DOB        |
+------+-----------+-------+-------+------------+
|  107 | Rushi     | SY    |  99.9 | 2007-04-25 |
|  115 | Aditya    | SY    |    90 | 2006-06-01 |
|  100 | Aadesh    | SY    |    95 | 2004-09-30 |
|  118 | Bhagyoday | SY    |     0 | 2005-11-03 |
+------+-----------+-------+-------+------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO student ('117', 'Shayad', 'SY', '90', '2006-01-14');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''117', 'Shayad', 'SY', '90', '2006-01-14')' at line 1
mysql> INSERT INTO student VALUES ('117', 'Shayad', 'SY', '90', '2006-01-14');
Query OK, 1 row affected (0.01 sec)