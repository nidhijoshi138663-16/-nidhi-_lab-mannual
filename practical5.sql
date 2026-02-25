--program to print simple interest
set serveroutput on 
declare
 	p number(3):=100;
	r number(3):=3;
	n number(3):=5;
	sip number;
begin
	sip:=p*r*n/100;
	dbms_output.put_line('simple interest is: '||sip);
end;
/