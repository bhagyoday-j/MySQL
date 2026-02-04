mysql> UPDATE student SET DOP = '2004-09-17' WHERE Rno = '100';
ERROR 1054 (42S22): Unknown column 'DOP' in 'field list'
mysql> UPDATE student SET DOB = '2004-09-17' WHERE Rno = '100';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SHOW * FROM student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* FROM student' at line 1
mysql> SELECT * FROM student;
+------+-----------+-------+-------+------------+
| Rno  | Name      | Class | Marks | DOB        |
+------+-----------+-------+-------+------------+
|  107 | Rushi     | SY    |  99.9 | 2007-04-25 |
|  115 | Aditya    | SY    |    90 | 2006-06-01 |
|  100 | Aadesh    | SY    |    95 | 2004-09-17 |
|  118 | Bhagyoday | SY    |     0 | 2005-11-03 |
|  117 | Shayad    | SY    |    90 | 2006-01-14 |
+------+-----------+-------+-------+------------+
5 rows in set (0.00 sec)