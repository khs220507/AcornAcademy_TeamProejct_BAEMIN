use baemin_db;

-- 01 회원 user_tbl
create table user_tbl(
    userCode int auto_increment primary key,
    userId varchar(20) not null,
    userPw varchar(30) not null,
    userName varchar(20) not null,
    userNickname  varchar(20) not null,
    userPhone varchar(50) not null,
    userAddress varchar(150) not null,
    userEmail varchar(50) not null,
    userBirth varchar(20) not null,
    userGender tinyint(1) not null, -- 0:남자, 1:여자
    userStatus tinyint(1) not null -- 0:회원탈퇴, 1:정상회원
) auto_increment=10000;

select * from user_tbl;

-- 02 사장 seller_tbl
create table seller_tbl(
	sellerRegCode int auto_increment primary key,
    sellerId varchar(20) not null,
    sellerPw varchar(30) not null,
    sellerName varchar(20) not null,
    sellerPhone varchar(50) not null,
    sellerEmail varchar(50) not null,
    sellerBirth varchar(20) not null,
	sellerGender tinyint(1) not null, -- 0:남자, 1:여자
    sellerStatus  tinyint(1) not null -- 0:회원탈퇴, 1:정상회원
)auto_increment=20000;


-- 03

-- 04

-- 05

-- 06

-- 07

-- 08

-- 09

-- 10

-- 11

