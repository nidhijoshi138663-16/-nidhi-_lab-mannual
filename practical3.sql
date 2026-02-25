--program to display all record of male employee
set serveroutput on
declare
	v_eid employee.eid%type;
	v_ename employee.ename%type;
	v_dname employee.dname%type;
	v_salary employee.salary%type;
	v_gender employee.gender%type;
begin
	select eid,ename,dname,salary,gender into v_eid,v_ename,v_dname,v_salary,v_gender from employee where gender='m' and dname='hr';
	
	dbms_output.put_line('eid: '||v_eid|| ',name: ' ||v_ename|| ',dept: '||v_dname|| ',salary: '||v_salary|| ',gender: '||v_gender);
end;
/ 