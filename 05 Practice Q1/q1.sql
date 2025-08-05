create database xyz_company;

use xyz_company;

create table employee (
	id int primary key,
    name varchar(50),
    salary int
);

insert into employee (id, name, salary) VALUES
(1, "adam", 20000),
(2, "alux", 35000),
(3, "adil", 39000);

select * from employee;

