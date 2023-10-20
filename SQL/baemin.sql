
-- 01 회원

-- 02 사장

-- 03 매장

-- 04 메뉴

-- 05 옵션

-- 06 장바구니

-- 07 주문
CREATE SEQUENCE orderNumber_seq START WITH 10000;
create table order_tbl(
orderNumber varchar2(20) PRIMARY KEY,
userCode varchar2(20),
storeCode varchar2(20),
orderDate date,
payType NUMBER(1, 0),
orderType NUMBER(1, 0), 
reqToSeller varchar(300),
reqToRider varchar(300),
orderStatus varchar(20),
CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);

-- 08 찜
CREATE TABLE zzim_tbl (
    userCode VARCHAR2(20),
    storeCode VARCHAR2(20),
    CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
    CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);
-- 09 리뷰
create table review_tbl(
reviewCode  varchar2(5) primary key ,--리뷰코드 
menuCode  varchar2(20)   ,--메뉴코드 
userCode  varchar2(10) ,--회원코드 
storeCode  varchar2(13) ,--매장코드 
reviewDate date not null ,--리뷰날짜 
reviewRating number(2) not null ,--리뷰평점 
reviewContent varchar2(300) not null,--리뷰내용 
 CONSTRAINT fk_menuCode FOREIGN KEY (menuCode) REFERENCES menu_tbl(menuCode),
  CONSTRAINT fk_userCode FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
  CONSTRAINT fk_storeCode FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);
create sequence reviewCode_seq start with 10000;
-- 10 리뷰답글
create table answer_tbl(
  answerCode  varchar2(20) not null primary key, --답변코드
  reviewCode   varchar2(20) , --리뷰코드
  answerDate  date not null , --답변날짜
  answerContent varchar2(300) not null, --답변내용
   CONSTRAINT fk_reviewCode FOREIGN KEY (reviewCode) REFERENCES review_tbl(reviewCode)
);
create sequence answerCode_seq start with 10000;

