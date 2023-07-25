# 데이터베이스 삭제/생성/선택
DROP DATABASE IF EXISTS sbs_proj;
CREATE DATABASE sbs_proj;
USE sbs_proj;

CREATE TABLE article (
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	title CHAR(100) NOT NULL,
	`body` CHAR(100) NOT NULL,
	memberId INT(1) UNSIGNED NOT NULL,
	boardId INT(1) UNSIGNED NOT NULL,
	hit INT(100) UNSIGNED NOT NULL,
	INDEX boardId (`boardId`)
);

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목1',
`body` = '내용1',
memberId = 1,
boardId = 1,
hit = 17;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목2',
`body` = '내용2',
memberId = 2,
boardId = 1,
hit = 39;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목3',
`body` = '내용3',
memberId = 1,
boardId = 2,
hit = 22;

SELECT * FROM article;

ALTER TABLE article ADD COLUMN hit INT(10) UNSIGNED NOT NULL;

CREATE TABLE articleReply (
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	`body` CHAR(100) NOT NULL,
	memberId INT(1) UNSIGNED NOT NULL,
	articleId INT(1) UNSIGNED NOT NULL,
	INDEX articleId (`articleId`)
);

INSERT INTO articleReply
SET regDate = NOW(),
updateDate = NOW(),
`body` = '댓글1',
memberId = 1,
articleId = 2;

INSERT INTO articleReply
SET regDate = NOW(),
updateDate = NOW(),
`body` = '댓글2',
memberId = 2,
articleId = 1;

SELECT * FROM articleReply;

CREATE TABLE `member` (
   id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
   regDate DATETIME NOT NULL,
   updateDate DATETIME NOT NULL,
   loginId CHAR(100) NOT NULL UNIQUE,
   loginPw CHAR(100) NOT NULL,
   nickName CHAR(100) NOT NULL,
   
   
   sex CHAR(100) NOT NULL,
   height DOUBLE(5,2) NULL,
   weight DOUBLE(5,2) NULL,
   bmi DOUBLE(4,2) NULL,
   bmi_level CHAR(100) NULL,
   loss CHAR(100) NULL,
   months CHAR(100) NULL,
   category CHAR(100) NULL,
   category_level CHAR(100) NULL
   
);

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
nickName = '관리자',
sex = '남자',
height = 175,
weight = 65,
bmi = 21.2,
bmi_level = '표쥰',
loss = '5kg 감량',
months = '1~3개월',
category = '요가',
category_level = '요린이';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'user1',
loginPw = 'user1',
nickName = '김창민',
sex = '남자',
height = 175,
weight = 65,
bmi = 21.2,
bmi_level = '표쥰',
loss = '5kg 감량',
months = '1~3개월',
category = '요가',
category_level = '요린이';


SELECT * FROM `member`;

CREATE TABLE board (
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	`code` CHAR(100) NOT NULL UNIQUE, # free/notice
	`name` CHAR(100) NOT NULL # 자유/공지사항
);

INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'notice',
`name` = '공지';

INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'free',
`name` = '자유';

SELECT * FROM board;