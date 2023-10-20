
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

-- 10 리뷰답글


