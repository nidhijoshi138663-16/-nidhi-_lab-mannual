--Definition 4

create or replace function fun_def4(x in
number,ans out number) Return number
is
begin
ans:=x * x * x;
return ans;
end fun_def4;
/