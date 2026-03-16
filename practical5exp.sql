--example of parameterised cursor with
explicit cursor
set serveroutput on
DECLARE
Cursor c1(xdeptno number) IS
select name,deptno,basicsal,gross from employee
where deptno= xdeptno;
x c1%ROWTYPE; --rowtype then
BEGIN
Open c1(20);
loop
fetch c1 INTO x;
exit when C1%NOTFOUND;
dbms_output.put_line('name: '||
x.name||' Deptno: '|| x.deptno||'
salary: '|| x.basicsal||'gross salary:'||x.gross);
end loop;
close c1;
END;
/