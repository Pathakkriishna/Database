create database Pathak;
use Pathak;
create table employee(
id int primary key identity (4701,1),
name varchar(20),
address varchar(20),
contact varchar(20)
);
drop table employee;
select * from employee;
insert into employee values( 'Krishna','Baniyatar',9818821027),('Nabin','Kalo Pul',9812376435),('Prashil','Baniyatar',9875642934);
create table student(
id int primary key identity (4701,1),
name varchar(20)
);
insert into student values('Kaushal');