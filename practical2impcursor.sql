--Write a PL/SQL block that uses a cursor attribute %ISOPEN and
%NOTFOUND to raise the basic salary of employees of department
number 20 by 5% with implicit cursor

begin
	update employee set basicsal=basicsal+(basicsal*0.05) where deptno=20;
	if sql%isopen then
		dbms_output.put_line('cursor is open');
	end if;
	if sql%notfound then
		dbms_output.put_line('cursor is closed');	
	else
	dbms_output.put_line('total updated
records:'||SQL%ROWCOUNT);
end if;

end;
/

		