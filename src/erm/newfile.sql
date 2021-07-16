
/* Drop Tables */

DROP TABLE BOARDREPLY CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE RIDER CASCADE CONSTRAINTS;
DROP TABLE SALES CASCADE CONSTRAINTS;
DROP TABLE BASKET CASCADE CONSTRAINTS;
DROP TABLE ITEMS CASCADE CONSTRAINTS;
DROP TABLE LINECOMMENTS CASCADE CONSTRAINTS;
DROP TABLE MASTERS CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE PLIST CASCADE CONSTRAINTS;
DROP TABLE RBASKET CASCADE CONSTRAINTS;


CREATE TABLE BOARD
(
   BONO varchar2(200) NOT NULL PRIMARY KEY,
   ID varchar2(20) NOT NULL,
   SNO varchar2(200) NOT NULL,
   CATEGORY varchar2(200) NOT NULL,
   POSTDATE date DEFAULT SYSDATE NOT NULL,
   BCONTENT nvarchar2(200) NOT NULL,
   BOARDCOMPLETE varchar2(10) DEFAULT '0' NOT NULL
);

/* Create Tables */

CREATE TABLE BASKET
(
	BNO number DEFAULT 1 NOT NULL PRIMARY KEY,
	NO number NOT NULL,
	INO nvarchar2(20) NOT NULL
);


CREATE TABLE BOARD
(
	BONO varchar2(200) NOT NULL PRIMARY KEY,
	ID varchar2(20) NOT NULL,
	SNO varchar2(200) NOT NULL,
	CATEGORY varchar2(200) NOT NULL,
	BDATE date DEFAULT SYSDATE,
	BCONTENT nvarchar2(200) NOT NULL,
	BOARDCOMPLETE varchar2(10) DEFAULT '0' NOT NULL
);


CREATE TABLE BOARDREPLY
(
	ADCOMMENT nvarchar2(100),
	ADREPLYDATE date DEFAULT SYSDATE,
	BONO varchar2(200) NOT NULL
);


CREATE TABLE ITEMS
(
	INO nvarchar2(20) NOT NULL,
	MNO varchar2(200) NOT NULL UNIQUE,
	LNO number NOT NULL,
	IMAGE nvarchar2(100) NOT NULL,
	IMAGE2 nvarchar2(500),
	INAME nvarchar2(20) NOT NULL,
	INAME2 nvarchar2(15),
	-- 상품리스트에 들어갈 간략한 설명
	INAME3 nvarchar2(20),
	PRICE varchar2(20) NOT NULL,
	IPAGE nvarchar2(100),
	-- 교환 환불 처리 관련 이미지
	IPAGE2 nvarchar2(500),
	CATEGORY number NOT NULL,
	STOCK number,
	-- ~~을 검색하면 나올 수 있게 설정
	HASHTAG nvarchar2(50),
	DISH float,
	BRAND nvarchar2(20) NOT NULL,
	PNO varchar2(100) NOT NULL,
	PRIMARY KEY (INO)
);


CREATE TABLE LINECOMMENTS
(
	LNO number NOT NULL PRIMARY KEY,
	ID varchar2(20) NOT NULL,
	BONO number NOT NULL ,
	LINECOMMENT varchar2(50) NOT NULL,
	LSCORE number NOT NULL,
	LPOSTDATE date DEFAULT SYSDATE
);


CREATE TABLE MASTER
(
	MNO varchar2(200) NOT NULL,
	NO number NOT NULL,
	MNAME nvarchar2(15) NOT NULL,
	MASTERNAME nvarchar2(10) ,
	MADDR1 nvarchar2(50) NOT NULL,
	MADDR2 nvarchar2(50) NOT NULL,
	MADDR3 nvarchar2(50) NOT NULL,
	MTEL varchar2(15) NOT NULL,
	MARTLICENCE varchar2(30) NOT NULL,
	PRIMARY KEY (MNO)
);


CREATE TABLE MEMBER
(
	NO number NOT NULL,
	ID varchar2(20) NOT NULL PRIMARY KEY,
	PWD nvarchar2(20) NOT NULL,
	NAME nvarchar2(20) NOT NULL,
	ADDR varchar2(100) NOT NULL,
	TEL varchar2(13) NOT NULL,
	MAIL varchar2(50) NOT NULL,
	BIRTH date DEFAULT SYSDATE
);


CREATE TABLE PLIST
(
	PNO varchar2(100) NOT NULL,
	DELIVERYPAY varchar2(500) NOT NULL,
	COUPON nvarchar2(20),
	PVIEW varchar2(200) NOT NULL,
	PBUYCOUNT number(38) NOT NULL,
	PSCORE varchar2(500) NOT NULL,
	PTAG nvarchar2(200),
	PRIMARY KEY (PNO)
);


CREATE TABLE RBASKET
(
	RNO varchar2(200) NOT NULL,
	PRIMARY KEY (RNO)
);


CREATE TABLE RIDER
(
	NO number NOT NULL,
	SNO varchar2(200) NOT NULL,
	-- ex)운전경력 2년 이상
	LICENSE nvarchar2(15) NOT NULL,
	BANKACCOUNT nvarchar2(10) NOT NULL,
	RIDEVEHICLE number(10) NOT NULL
);


CREATE TABLE SALES
(
	SNO varchar2(200) NOT NULL,
	BNO number DEFAULT 1 NOT NULL,
	SDATE date DEFAULT SYSDATE NOT NULL,
	METHOD number(10) NOT NULL,
	PRIMARY KEY (SNO)
);



/* Create Foreign Keys */

ALTER TABLE SALES
	ADD FOREIGN KEY (BNO)
	REFERENCES BASKET (BNO)
;


ALTER TABLE BOARDREPLY
	ADD FOREIGN KEY (BONO)
	REFERENCES BOARD (BONO)
;


ALTER TABLE BASKET
	ADD FOREIGN KEY (INO)
	REFERENCES ITEMS (INO)
;


ALTER TABLE ITEMS
	ADD FOREIGN KEY (LNO)
	REFERENCES LINECOMMENTS (LNO)
;


ALTER TABLE ITEMS
	ADD FOREIGN KEY (MNO)
	REFERENCES MASTERS (MNO)
;


ALTER TABLE BASKET
	ADD FOREIGN KEY (NO)
	REFERENCES MEMBER (NO)
;


ALTER TABLE BOARD
	ADD FOREIGN KEY (NO)
	REFERENCES MEMBER (NO)
;


ALTER TABLE LINECOMMENTS
	ADD FOREIGN KEY (NO)
	REFERENCES BOARD (NO)
;


ALTER TABLE MASTERS
	ADD FOREIGN KEY (NO)
	REFERENCES MEMBER (NO)
;


ALTER TABLE RIDER
	ADD FOREIGN KEY (NO)
	REFERENCES MEMBER (NO)
;


ALTER TABLE ITEMS
	ADD FOREIGN KEY (PNO)
	REFERENCES PLIST (PNO)
;


ALTER TABLE BOARD
	ADD FOREIGN KEY (SNO)
	REFERENCES SALES (SNO)
;


ALTER TABLE RIDER
	ADD FOREIGN KEY (SNO)
	REFERENCES SALES (SNO)
;



/* Comments */

COMMENT ON COLUMN ITEMS.INAME3 IS '상품리스트에 들어갈 간략한 설명';
COMMENT ON COLUMN ITEMS.IPAGE2 IS '교환 환불 처리 관련 이미지';
COMMENT ON COLUMN ITEMS.HASHTAG IS '~~을 검색하면 나올 수 있게 설정';
COMMENT ON COLUMN RIDER.LICENSE IS 'ex)운전경력 2년 이상';

CREATE SEQUENCE NO
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_SALES
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_ITEMS
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_BASKET
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_BOARD
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_LINECOMMENTS
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_RIDER
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_RBASKET
NOCACHE
NOCYCLE;

CREATE SEQUENCE SEQ_SCRAP
NOCACHE
NOCYCLE;
