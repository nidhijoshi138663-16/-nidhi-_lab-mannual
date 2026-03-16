---Write a PL/SQL block using a cursor FOR loop to
display name and the basic salary of top 3 highest
paid employees. (Use Cursor For Loop)

set serveroutput on
begin
	for r1 in (select name,basicsal from (select name,basicsal from employee order by basicsal DESC)where rownum<=3)
	loop
	dbms_output.put_line('name:'||r1.name);
	dbms_output.put_line('salary:'||r1.basicsal);
	end loop;
end;
/
