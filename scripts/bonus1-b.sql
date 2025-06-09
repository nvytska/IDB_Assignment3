-- BONUS 1.
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

start transaction;
update accounts
set balance = balance + 1000
where id =1;

commit;
