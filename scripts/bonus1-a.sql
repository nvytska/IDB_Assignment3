-- BONUS 1.
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

start transaction;
select * from accounts 
where id =1;

select * from accounts 
where id =1;

rollback;
