delimiter |
create procedure transfer(IN my_user_id varchar(32))
begin
  declare user_name1 varchar(32) default '';
  select user_name into user_name1 from p_app_user where user_id = my_user_id;
  select user_name1;
end;
|
delimiter ;