--Definition 3

create or replace procedure pro_def3(xeid IN
number,xenm OUT char)
IS
BEGIN
select ename INTO xenm from emp where
EID=xeid;
Exception
WHEN NO_DATA_FOUND THEN
dbms_output.put_line('inputted eid is not
exists in emp table');
end pro_def3;
/