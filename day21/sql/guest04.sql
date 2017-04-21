drop table guest04;
create table guest04(
	sabun number,
	name varchar2(60),
	sub varchar2(60),
	nalja date,
	pay number
);
drop sequence guest04_seq;
create Sequence guest04_seq start with 1000;

insert into guest04 values (guest04_seq.nextval, 'user01','力格绝澜', sysdate, 1000);
insert into guest04 values (guest04_seq.nextval, 'user03','力格绝澜', sysdate, 1000);
insert into guest04 values (guest04_seq.nextval, 'user02','力格绝澜', sysdate, 2000);
insert into guest04 values (guest04_seq.nextval, 'user01','力格绝澜', sysdate, 3000);
insert into guest04 values (guest04_seq.nextval, 'user03','力格绝澜', sysdate, 4000);

select * from guest04;