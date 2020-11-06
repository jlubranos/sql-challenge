# sql-challenge
SQL homework assignment
Created October 31, 2020

This folder consists of:

    a) data folder which contains the .csv files for the homework.
    b) sql_challenger_erg.png which is the erd for employee_db.
    c) schema.sql is the schema for the database.
    d) queries.sql are the queries for all the questions on the homework.  Comments in the
       .sql file indicate which questions each of the queries answer.
    e) sql_bonus.ipynb is the jupyter notebook which contains the code for the bonus
       questions.
       
# Database design assumptions:

1) An employee can only have a single title.
2) An employee can work in more than one department.
      dept_emp ------> Composite key (emp_no, dept_no)
3) A department can have mulitple managers, but an employee can only manage a single department.
      dept_manager --------> Composite key (dept_no, emp_no)
4) Employee can only have one emp_no.
5) Employee can only have one salary.
6) A department can only have one dept_no.
7) A title can only have one title_id.

These assumptions are reflected on the ERD as well as the schema.
       