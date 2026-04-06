--Definition 2

create or replace procedure pro_def2(xdeptno
IN number,xper IN number)
is
begin
update emp set BASICSAL=BASICSAL +
(BASICSAL * (xper/100)) WHERE
DEPTNO=xdeptno;
commit;
end pro_def2;
/