use assignment_3;
-- 1.
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;


start transaction;
select * from accounts;

rollback;

-- 2.
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

start transaction;
update accounts
set balance = balance + 1000
where id =1;

commit;
