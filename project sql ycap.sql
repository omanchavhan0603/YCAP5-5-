create database db;
use db;

create table employees(
   emp_id int primary key,
   emp_name varchar(30),
   manager_id int default 1
);

select * from employees;

insert into employees values
(1,'oman',null),
(2,'shlok',1),
(3,'aniruddha',1),
(4,'nidhish',2);

select
	e.emp_name as employee,
    m.emp_name as manager
    from employees e
    left join employees m
    on e.manager_id = m.emp_id;
