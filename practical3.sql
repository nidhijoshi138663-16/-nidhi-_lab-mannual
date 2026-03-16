--Write a PL/SQL block that uses a cursor attribute %ROWCOUNT to
display the name, department and basic salary of first 5
employees getting the highest basic salary. (Use Explicit Cursor)

set serveroutput on
declare

cursor def3 IS select
name,DEPTNAME,basicsal from employee order by
basicsal desc;
nm employee.name%TYPE;
dnm employee.deptname%TYPE;
sal employee.basicsal%TYPE;
n number;
begin
open def3;
loop
fetch def3 into nm,dnm,sal;
exit when def3%NOTFOUND;
dbms_output.put_line('Name:'||nm);
dbms_output.put_line('Department
Name:'||dnm);
dbms_output.put_line('basic salaray:'||sal);
n:=def3%ROWCOUNT;
end loop;
close def3;
dbms_output.put_line('total rows:'||n);

end;
/