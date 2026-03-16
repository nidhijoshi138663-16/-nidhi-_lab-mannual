--parameterised cursor with cursor for
loop
set serveroutput on
declare

cursor cur2(dno number) IS select
name,deptno,basicsal,gross from employee
where deptno=dno;
begin
for r1 IN cur2(10)
loop
dbms_output.put_line('name: '||
r1.name||' Deptno: '|| r1.deptno||'
salary: '|| r1.basicsal||'gross salary:'||r1.gross);
end loop;
end;
/