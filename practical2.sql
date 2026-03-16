--Write a PL/SQL block that uses a cursor attribute %ISOPEN and
%NOTFOUND to raise the basic salary of employees of department
number 20 by 5% and also display the appropriate message based
on the existence to the record in the EMP table. Whenever any
such raise is given to the employees, a record for the same is
maintained in the emp_update table. (Perform using both Implicit
and Explicit Cursor)

set serveroutput on
declare
	cursor def2 is select basicsal from employee where
	deptno=10;
	sal employee.basicsal%type;
	increment number;
begin
open def2;
if def2%isopen then
loop
	fetch def2 into sal;
	exit when def2%notfound;
	increment:=sal*0.5;
	update employee set basicsal=sal+increment
	where deptno=10;
	end loop;
	dbms_output.put_line('salary is updated');
close def2;
else
	dbms_output.put_line('cursor is not open');
end if;
end;
/