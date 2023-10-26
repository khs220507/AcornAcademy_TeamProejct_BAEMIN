use baemin_db;

-- 01 

-- 02

-- 03

-- 04

-- 05

-- 06

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

