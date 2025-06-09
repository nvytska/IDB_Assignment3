create database assignment_3;
use assignment_3;

create table accounts
(id int primary key,
name varchar(30),
balance decimal (10,2));

insert into accounts values
(1, 'Alice', 500),
(2, 'Charlie', 700);

-- 1.
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

start transaction;
update accounts
set balance = balance - 100
where id =1;

rollback;



-- 2.
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

start transaction;
select * from accounts 
where id =1;

select * from accounts 
where id =1;

rollback;
