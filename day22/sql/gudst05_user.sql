--회원 스키마
drop table guest05_user;
create table guest05_user(
	id varchar(10) primary key,
	pw varchar(10),
	email varchar(60)
);

insert into guest05_user values ('admin', '1234', 'admin@hb.com');
insert into guest05_user values ('user1', '1111', 'user1@hb.com');

select * from guest05_user;