create table admin
(
userid char(10) primary key,
userpass char(10)
);

insert into admin values ('1234','1234');

create table guanli
(
name char(10) primary key,
username char(10),
password char(10)
);

insert into guanli values ('管理员','1234','1234');

create table pxx
(
  name char(15) primary key,
  phone char(15),
  username char(15),
  password char(15)
)

create table ckxx
(
  sdate date,
  salerName char(5),
  gukeName char(5),
  gukeCall char(20),
  goodsName varchar(255),
  goodsNum varchar(120),
  sale varchar(120),
  yMoney double,
  sMoney double
);

create table goods
(
  sdate date,
  goodsName char(10),
  goodsNum char(5)
);