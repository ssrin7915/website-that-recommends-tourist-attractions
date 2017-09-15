--각 도시 정보(도시id,도시명,속한 도)--
drop table city_info;
drop sequence seq_cid;
create table city_info (
	cid number(10) primary key,
	cname varchar2(50) not null,
	dname varchar2(50) not null
);
CREATE SEQUENCE seq_cid START WITH 1 INCREMENT BY 1 ;

--관광명소 (도시id, 명소id, 명소명, 주소, 번호, 간단설명,사이트url,사진소스)--
drop table attraction;
drop sequence seq_aid;
create table attraction (
	cid number(10),
	aid number(10) primary key,
	aname varchar2(100) not null,
	address varchar2(300) not null,
	phone varchar2(20) not null,
	contents long not null,
	url varchar2(300) not null,
	photo varchar2(70) not null,
constraint attraction_cid_fk foreign key(cid) references city_info(cid)
);
CREATE SEQUENCE seq_aid START WITH 1 INCREMENT BY 1 ;

--축제 (도시id, 축제id, 축제명, 주소, 기간, 간단설명, 사이트url,사진소스 )--
drop table festival;
drop sequence seq_fid;
create table festival (
	cid number(10),
	fid number(10) primary key,
	fname varchar2(100) not null,
	address varchar2(300) not null,
	period varchar2(50) not null,
	contents long not null,
	url varchar2(300) not null,
	photo varchar2(70) not null,
constraint festival_fid_fk foreign key(cid) references city_info(cid)
);
CREATE SEQUENCE seq_fid START WITH 1 INCREMENT BY 1 ;

drop table restaurant;
drop sequence seq_rid;
create table restaurant (
	cid number(10),
	rid number(10) primary key,
	rname varchar2(100) not null,
	phone varchar2(300) not null,
	address varchar2(300) not null,
	menu varchar2(60) not null,
	price number(15) not null,
	photo varchar2(70) not null,
constraint festival_cid_fk foreign key(cid) references city_info(cid)
);
CREATE SEQUENCE seq_rid START WITH 1 INCREMENT BY 1 ;

--좋아요리스트(회원id,리스트id,구분자)--
drop table likelist;
create table likelist (
	Mid varchar2(10) ,
	Allid number(10),
	identity varchar2(100) not null,
constraint likelist_Mid_fk foreign key(Mid) references customer(Mid)
);

--회원정보테이블(회원id,pw,이름,번호,생년월일,이메일,성)--
drop table customer;
create table customer (
	Mid varchar2(10) primary key,
	password varchar2(20) not null,
	name varchar2(20) not null,
	phone varchar2(100) not null,
	birth Date not null,
	email varchar2(100) not null,
	gender varchar2(20)
);
