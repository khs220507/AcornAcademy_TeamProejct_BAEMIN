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
insert into user_tbl (userId,userPw,userName,userNickname,userPhone,userAddress,userEmail,userBirth,userGender,userStatus)VALUES('testid','testpw','test','test','01011112222','인천서구장고개로309','test@gmail.com','210914','0','1');
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
select * from seller_tbl;
insert into seller_tbl (sellerId,sellerPw,sellerName,sellerPhone,sellerEmail,sellerBirth,sellerGender,sellerStatus)VALUES('testid','testpw','test','01011112222','test@gmail.com','210914','0','1');

-- 03. 태민 store_tbl
DROP TABLE IF EXISTS store_tbl;

CREATE TABLE store_tbl (
  storeCode INT AUTO_INCREMENT PRIMARY KEY, 	-- 매장코드
  storeName VARCHAR(50) NOT NULL,    			-- 매장이름
  storeCategory VARCHAR(50) NOT NULL,  			-- 음식 카테고리
  storeImage VARCHAR(200) NOT NULL,   			-- 매장사진
  storeAddress VARCHAR(200) NOT NULL,  			-- 매장주소
  storePhone VARCHAR(12) NOT NULL,    			-- 매장전화번호
  zzimCount INT NOT NULL,             			-- 찜개수
  reviewCount INT NOT NULL,           			-- 리뷰수
  storeRating DECIMAL(3, 1) NOT NULL,  			-- 매장평점
  storeDescription TEXT NOT NULL,     			-- 매장소개글
  minOrderPrice INT NOT NULL,        			-- 최소주문금액
  deliveryFee INT NOT NULL,           			-- 배달비
  operatingTime VARCHAR(50) NOT NULL, 			-- 운영시간
  deliveryArea VARCHAR(50) NOT NULL,  			-- 배달지역
  storeStatus TINYINT NOT NULL        			-- 가게 상태(0:close, 1:open)
) auto_increment = 30000;

-- 연습하기
INSERT INTO store_tbl (storeName, storeCategory, storeImage, storeAddress, storePhone, zzimCount, reviewCount, storeRating, storeDescription, minOrderPrice, deliveryFee, operatingTime, deliveryArea, storeStatus) VALUES
  ('맛있는 피자집', '피자', 'pizza.jpg', '서울시 강남구 강남로 123', '02-1234-5678', 1200, 56, 4.5, '신선한 재료로 만든 피자를 즐기세요.', 15000, 2000, '11:00 AM - 10:00 PM', '강남구', 1),
  ('맛있는 중국집', '중식', 'chinese.jpg', '서울시 종로구 종로 456', '02-9876-5432', 980, 42, 4.2, '정통 중국 요리를 맛볼 수 있는 곳입니다.', 18000, 2500, '10:30 AM - 9:30 PM', '종로구', 1),
  ('헬시한 샐러드 바', '샐러드', 'salad.jpg', '서울시 강서구 공항로 789', '02-5555-1111', 600, 30, 4.7, '신선한 채소와 드레싱으로 건강하게 식사하세요.', 12000, 1500, '9:00 AM - 8:00 PM', '강서구', 1),
  ('맛나는 스테이크 하우스', '스테이크', 'steak.jpg', '서울시 강북구 스테이크로 321', '02-3333-9999', 750, 28, 4.6, '고급 스테이크와 와인을 즐기는 곳입니다.', 25000, 3000, '12:00 PM - 10:30 PM', '강북구', 1),
  ('아늑한 카페', '카페', 'cafe.jpg', '서울시 서초구 카페로 987', '02-7777-2222', 450, 40, 4.8, '휴식과 커피를 즐기는 아늑한 카페입니다.', 8000, 1000, '8:00 AM - 7:00 PM', '서초구', 1),
  ('토종 떡볶이 가게', '분식', 'tteokbokki.jpg', '서울시 중랑구 떡볶이로 654', '02-4444-7777', 320, 25, 4.4, '매콤하고 달콤한 토종 떡볶이를 즐겨보세요.', 9000, 1200, '10:00 AM - 10:00 PM', '중랑구', 1),
  ('신선한 일식 요리', '일식', 'sushi.jpg', '서울시 송파구 일식로 123', '02-6666-8888', 550, 36, 4.3, '신선한 일본 요리를 맛보는 곳입니다.', 22000, 2500, '11:30 AM - 9:00 PM', '송파구', 1),
  ('맛나는 버거집', '패스트푸드', 'burger.jpg', '서울시 마포구 버거로 567', '02-8989-7878', 780, 48, 4.5, '정통 버거와 감자튀김을 즐기는 곳입니다.', 13000, 1800, '11:00 AM - 10:00 PM', '마포구', 1),
  ('풍미있는 태국 음식', '태국음식', 'thai.jpg', '서울시 강동구 태국로 234', '02-1212-3434', 400, 22, 4.1, '태국 향기로운 요리를 맛보세요.', 16000, 2200, '12:00 PM - 9:30 PM', '강동구', 1),
  ('새로운 퓨전 음식', '퓨전음식', 'fusion.jpg', '서울시 영등포구 퓨전로 567', '02-2323-7878', 650, 34, 4.4, '다양한 문화가 어우러진 퓨전 음식을 즐기는 곳입니다.', 19000, 2700, '11:30 AM - 9:00 PM', '영등포구', 1);

SELECT * FROM store_tbl;

-- 04 태민 menu_tbl;
DROP TABLE IF EXISTS menu_tbl;

CREATE TABLE menu_tbl (
  menuCode INT AUTO_INCREMENT PRIMARY KEY,     	-- 메뉴코드
  menuName VARCHAR(50) NOT NULL,        		-- 메뉴이름
  menuPrice INT,                        		-- 메뉴가격
  menuImage VARCHAR(50) NOT NULL,      			-- 메뉴사진
  menuContent TEXT NOT NULL,           			-- 메뉴설명
  menuClassification VARCHAR(50) NOT NULL, 		-- 메뉴분류
  menuStatus TINYINT NOT NULL           		-- 메뉴상태(0:open, 1:sold out)
) auto_increment = 40000;

-- 연습하기
INSERT INTO menu_tbl (menuName, menuPrice, menuImage, menuContent, menuClassification, menuStatus) VALUES
  ('불고기 비빔밥', 10000, 'bulgogi_bibimbap.jpg', '부드러운 불고기와 신선한 채소가 어우러진 비빔밥.', '한식', 0),
  ('된장찌개', 9000, 'doenjang_jjigae.jpg', '진한 된장 맛이 일품인 영양 가득 찌개.', '한식', 0),
  ('갈비탕', 13000, 'galbitang.jpg', '고소한 소갈비와 풍부한 육수로 만든 갈비탕.', '한식', 0),
  ('김치볶음밥', 8500, 'kimchi_bokkeumbap.jpg', '신선한 김치로 볶아내는 맛있는 볶음밥.', '한식', 0),
  ('떡볶이', 7500, 'tteokbokki.jpg', '매콤한 양념에 쫄깃한 떡을 즐기는 대한민국의 길거리 음식.', '한식', 0),
  ('비빔국수', 11000, 'bibim_guksu.jpg', '신맛 가득한 비빔소스와 면을 곁들인 국수.', '한식', 0),
  ('생선구이', 12000, 'saengseon_gui.jpg', '신선한 생선을 구워 단호박과 함께 먹는 생선구이.', '한식', 0),
  ('김밥', 6000, 'gimbap.jpg', '다양한 재료를 싸서 만든 김밥.', '한식', 0),
  ('된장 불고기', 11000, 'doenjang_bulgogi.jpg', '간장과 된장으로 맛을 낸 고기 요리.', '한식', 0),
  ('순두부찌개', 9500, 'sundubu_jjigae.jpg', '부드러운 순두부와 간장 맛이 일품인 찌개.', '한식', 0);
  
SELECT * FROM menu_tbl;

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
SELECT * FROM cart_tbl;
-- 07
CREATE TABLE order_tbl (
    orderNumber INT AUTO_INCREMENT PRIMARY KEY,
    userCode int,
    storeCode int,
    orderDate DATE,
    payType TINYINT(1) UNSIGNED,
    orderType TINYINT(1) UNSIGNED,
    reqToSeller VARCHAR(300),
    reqToRider VARCHAR(300),
    orderStatus VARCHAR(20),
    FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
    FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
) AUTO_INCREMENT = 70000;
drop table order_tbl;

SELECT * FROM order_tbl;
-- 08
CREATE TABLE zzim_tbl (
    userCode int,
    storeCode int,
    FOREIGN KEY (userCode) REFERENCES user_tbl(userCode),
    FOREIGN KEY (storeCode) REFERENCES store_tbl(storeCode)
);
-- 09
CREATE TABLE review_tbl (
    reviewCode INT AUTO_INCREMENT PRIMARY KEY,
    menuCode int,
    userCode int,
    storeCode int,
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
    reviewCode int,
    answerDate DATE NOT NULL,
    answerContent VARCHAR(300) NOT NULL,
    FOREIGN KEY (reviewCode) REFERENCES review_tbl(reviewCode)
) AUTO_INCREMENT=100000;

-- 11 태민 address_tbl;
DROP TABLE IF EXISTS address_tbl;

CREATE TABLE address_tbl (
  addressCode INT AUTO_INCREMENT PRIMARY KEY,			-- 주소코드
  userCode INT,											-- 회원코드
  deliveryAddress VARCHAR(200) NOT NULL,				-- 배달주소
  FOREIGN KEY (userCode) REFERENCES user_tbl(userCode)	-- 회원코드 참조하는 곳
) auto_increment = 110000;

-- 연습하기
INSERT INTO address_tbl (deliveryAddress) VALUES
  ('서울시 강남구 역삼로 123-45'),
  ('서울시 종로구 종로 543-21'),
  ('서울시 마포구 공덕로 67-8'),
  ('서울시 송파구 올림픽로 876-32'),
  ('서울시 강동구 상일로 789-10'),
  ('서울시 강서구 방화로 234-56'),
  ('서울시 영등포구 여의도로 123-32'),
  ('서울시 강북구 삼양로 345-67'),
  ('서울시 중랑구 망우로 654-21'),
  ('서울시 강남구 강남대로 543-21');
  
SELECT * FROM menu_tbl;

SHOW TABLES;