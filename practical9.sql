--write a program to calculate total percentage and grade of given student roll no.
set serveroutput on
declare
	xrolno number(2):=&xrolno;
	xsub1 number(3);
	xsub2 number(3);
	xsub3 number(3);
	xsub4 number(3);
	xsub5 number(3);
	t number(3);
	p number(3);
begin
select sub1,sub2,sub3 ,sub4,sub5 into xsub1,xsub2,xsub3,xsub4,xsub5 from result where rollno=xrolno;
if(xsub1<40) and (xsub2<40) and (xsub3<40)and (xsub4<40) and (xsub5<40)then

	update result set total=0,per=0,grade='f' where rollno=xrolno;
else
	t:=xsub1+xsub2+xsub3+xsub4+xsub5;
	p:=(t/5);
	if p>=40 and p<50 then
	update result set total=t,per=p,grade='d' where rollno=xrolno;
	elsif p>=50 and p<60 then
	update result set total=t,per=p,grade='c' where rollno=xrolno;
	elsif p>=60 and p<70 then
	update result set total=t,per=p,grade='b' where rollno=xrolno;
	elsif p>=70 and p<=100 then
	update result set total=t,per=p,grade='a' where rollno=xrolno;
	else
	update result set total=t,per=p,grade='f' where rollno=xrolno;
	end if;
end if;
end;
/
	
	