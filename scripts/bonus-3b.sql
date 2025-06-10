-- BONUS 3.
start transaction;
update accounts
set balance = balance + 1000
where id =1;

commit;
