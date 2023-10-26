use baemin_db;

-- 01 

-- 02

-- 03

-- 04

-- 05. 옵션 option_tbl
create table option_tbl (
    optionCode int auto_increment primary key,
    menuCode int,
    optionCategory varchar(255),
    optionSelectType tinyint,
    optionName varchar(255),
    optionPrice int, 
    optionStatus tinyint
)auto_increment = 50000;

-- 06. 장바구니 cart_tbl 테이블 생성
create table cart_tbl (
    cartCode int auto_increment primary key,
    userCode int,
    storeCode int,
    menuCode int,
    optionCode int,
    menuCount int,
    cartPrice int,
    optionStatus tinyint,
    foreign key (userCode) references user_tbl(userCode),
    foreign key  (storeCode) references store_tbl(storeCode),
    foreign key  (menuCode) references menu_tbl(menuCode),
    foreign key  (optionCode) references option_tbl(optionCode)
)auto_increment = 60000;


-- 07

-- 08

-- 09
CREATE TABLE review_tbl (
    reviewCode INT AUTO_INCREMENT PRIMARY KEY,
    menuCode VARCHAR(20),
    userCode VARCHAR(10),
    storeCode VARCHAR(13),
    reviewImage VARCHAR(20) NOT NULL,
    reviewDate DATE NOT NULL,
    reviewRating INT NOT NULL,
    reviewContent VARCHAR(300) NOT NULL,
   FOREIGN KEY (menuCode) REFERENCES menu_tbl(menuCode),
   FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
   FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
) AUTO_INCREMENT=90000;


-- 10
CREATE TABLE answer_tbl (
    answerCode VARCHAR(20) NOT NULL PRIMARY KEY,
    reviewCode VARCHAR(20),
    answerDate DATE NOT NULL,
    answerContent VARCHAR(300) NOT NULL,
    FOREIGN KEY (reviewCode) REFERENCES review_tbl(reviewCode)
) AUTO_INCREMENT=100000;

-- 11

