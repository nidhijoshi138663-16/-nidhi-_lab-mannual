--Definition 5

create or replace function fun_Bal
(xacno IN number) RETURN NUMBER
IS
bal number;
begin
select balance INTO bal from account
where acno=xacno;
return bal;
end fun_Bal;
/