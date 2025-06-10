-- BONUS 3.
start transaction;
update accounts
set balance = balance + 200
where id = 1;

commit;
