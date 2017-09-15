--�� ���� ����(����id,���ø�,���� ��)--
drop table city_info;
drop sequence seq_cid;
create table city_info (
	cid number(10) primary key,
	cname varchar2(50) not null,
	dname varchar2(50) not null
);
CREATE SEQUENCE seq_cid START WITH 1 INCREMENT BY 1 ;

--������� (����id, ���id, ��Ҹ�, �ּ�, ��ȣ, ���ܼ���,����Ʈurl,�����ҽ�)--
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

--���� (����id, ����id, ������, �ּ�, �Ⱓ, ���ܼ���, ����Ʈurl,�����ҽ� )--
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

--���ƿ丮��Ʈ(ȸ��id,����Ʈid,������)--
drop table likelist;
create table likelist (
	Mid varchar2(10) ,
	Allid number(10),
	identity varchar2(100) not null,
constraint likelist_Mid_fk foreign key(Mid) references customer(Mid)
);

--ȸ���������̺�(ȸ��id,pw,�̸�,��ȣ,�������,�̸���,��)--
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
