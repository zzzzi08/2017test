--자료형
drop table guest05;
create table guest05(
	idx int auto_increment primary key,
	id varchar(10) default 'guest',
	sub varchar(6) default '제목없음',
	cntnt text,
	nalja timestamp,
	cnt int default 0,
	tf tinyint default 0
);
insert into guest05 (cntnt) values ('내용1');
insert into guest05 (sub,cntnt) values ('제목2','내용2');
select * from guest05;