create database pathak;
use pathak;
create table employee(
eid int primary key auto_increment,
ename varchar(20),
eaddress varchar(20),
esalary int
);
drop table employee;

create table student(
sid int primary key,
sname varchar(20),
saddress varchar(30),
sfaculty varchar(20),
eid int not null
);
drop table student;
select * from employee;
select eid,ename,esalary from employee;

insert into employee(ename,eaddress,esalary) values
('Ram','ktm',10000),('Shyam','ktm',50000),('Hari','ltp',45000),('Rahul','chitwan',60000);

insert into student(sid,sname,saddress,sfaculty,eid) values 
(4701,'Nabin','kalopul','BIT', 1),(4702,'Sandeep','lokanthali','BIM', 2),
(4703,'Krishna','Baniyatar','BIT', 1),(4716,'Prashil','Baniyatar','BBA', 2);

select * from student;
select sname,sfaculty from student;

update employee set esalary="70000"
where eid=3;

delete from employee where eid=3;

alter table student
add constraint fk_eid foreign key(eid) references employee(eid); 

select e.ename,s.sname, e.eaddress, s.sfaculty from student as s inner join employee as e on s.eid=e.eid;

select* from employee 
where esalary>=50000 AND eaddress='ktm';
