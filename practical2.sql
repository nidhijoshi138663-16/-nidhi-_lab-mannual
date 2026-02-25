--write a program that converts temprature from celsius to fahrenhit
set serveroutput on
accept c prompt 'enter temprature in celsius:'
declare
	celsius number:=&c;
	fahrenheit number;
begin
	fahrenheit:=(celsius*9/5)+32;
	dbms_output.put_line('celsius'||celsius);
 	dbms_output.put_line('fahrenheit'||fahrenheit);
end;
/