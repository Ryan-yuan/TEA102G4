
--DROP
DROP TABLE CUSTCOM;
DROP TABLE ADMININFO;
DROP TABLE BACKROLEMANAGER;
DROP TABLE BLOCKLIST;
DROP TABLE VIEWHIS;
DROP TABLE FAVORITES;
DROP TABLE SHOPPINGCART;
DROP TABLE COUPONFORCUST;
DROP TABLE ORDERDET;
DROP TABLE ORDERINFO;
DROP TABLE RESEMPMANAGER;
DROP TABLE ROLEMANAGER;
DROP TABLE COUPON;
DROP TABLE MENU;
DROP TABLE carousel;
DROP TABLE RESHOURS;
DROP TABLE ADDETAIL;
DROP TABLE WAITINGINFO;
DROP TABLE RESSEAT;
DROP TABLE RESINFO;
DROP TABLE CUSTINFO;

DROP SEQUENCE RESINFO_seq;
DROP SEQUENCE RESHOURS_seq;
DROP SEQUENCE ADDETAIL_seq;
DROP SEQUENCE ADMININFO_seq;
DROP SEQUENCE VIEWHIS_seq;
DROP SEQUENCE BLOCKLIST_seq;
DROP SEQUENCE favorites_seq;
DROP SEQUENCE COUPONFORCUST_seq;
DROP SEQUENCE SHOPPINGCART_seq;
DROP SEQUENCE ORDERINFO_seq;
DROP SEQUENCE CUSTINFO_seq;
DROP SEQUENCE RESEMPMANAGER_SEQ;
DROP SEQUENCE carousel_seq;
DROP SEQUENCE MENU_SEQ;
DROP SEQUENCE COUPON_seq;
DROP SEQUENCE CUSTCOM_SEQ;
DROP SEQUENCE WAITINGINFO_seq;

--餐廳基本資訊
CREATE SEQUENCE RESINFO_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE RESINFO(
    RESID VARCHAR2(20) NOT NULL,
    RESNAME VARCHAR2(30),
    RESADDID VARCHAR2(90),
    RESIMG BLOB,
    BARRIERFREE VARCHAR2(10),
    PARENTCHILD VARCHAR2(10),
    TRAFFIC VARCHAR2(90),
    PARKING VARCHAR2(90),
    PAYINFO VARCHAR2(30),
    NOTIFCONT VARCHAR2(90),
    RESEMAIL VARCHAR2(60) NOT NULL,
    RESPASSID VARCHAR2(30),
    CURRENTWAITINGNUM NUMBER,
    SUBTIMEDIFF NUMBER,
    WAITDISTANCE NUMBER,
    CONTACT VARCHAR2(60),
    CONTACTPHON VARCHAR2(60),
    CORRDINATE CLOB,
    ADDDATE TIMESTAMP,
    STATUS VARCHAR2(10),
    LAT VARCHAR2(30),
    LNG VARCHAR2(30),
    CONSTRAINT RESINFO_RESID_PK PRIMARY KEY (RESID)
);

INSERT INTO RESINFO(RESID,RESNAME,RESADDID,RESIMG,BARRIERFREE ,PARENTCHILD,TRAFFIC,PARKING,PAYINFO,NOTIFCONT,RESEMAIL,RESPASSID,CURRENTWAITINGNUM ,SUBTIMEDIFF ,WAITDISTANCE ,CONTACT,CONTACTPHON,CORRDINATE,ADDDATE,STATUS,LAT,LNG)
                    VALUES('R' || lpad(RESINFO_seq.NEXTVAL, 5, '0'),'元穎牛排館','台北市中正區仁愛路二段109號',EMPTY_BLOB(),'無','無','台北市中正區仁愛路二段109號','台北市中正區仁愛路二段109號前方100公尺','信用卡','您預定的時間快到了請準時入座','R00001@gmail.com','123456',10,9000000,5,'湯姆貓','0935814666','[{"x":240,"y":104,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":1},{"x":317,"y":102,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":2},{"x":398,"y":100,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":3},{"x":493,"y":106,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":4},{"x":584,"y":105,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":5},{"x":234,"y":188,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":6},{"x":316,"y":185,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":7},{"x":398,"y":187,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":8},{"x":492,"y":184,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":9},{"x":584,"y":182,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":10},{"x":234,"y":278,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":11},{"x":316,"y":276,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":12},{"x":397,"y":274,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":13},{"x":493,"y":271,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":14},{"x":588,"y":270,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":15}]',TO_TIMESTAMP('2020/10/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), '使用', '25.03847220955979', '121.53238637402976');
INSERT INTO RESINFO(RESID,RESNAME,RESADDID,RESIMG,BARRIERFREE ,PARENTCHILD,TRAFFIC,PARKING,PAYINFO,NOTIFCONT,RESEMAIL,RESPASSID,CURRENTWAITINGNUM ,SUBTIMEDIFF ,WAITDISTANCE ,CONTACT,CONTACTPHON,CORRDINATE,ADDDATE,STATUS,LAT,LNG)
                    VALUES('R' || lpad(RESINFO_seq.NEXTVAL, 5, '0'),'旭鋒火鍋','台北市松山區塔悠路245號',EMPTY_BLOB(),'無','無','台北市松山區塔悠路245號','台北市松山區塔悠路245號前方150公尺','信用卡','您預定的時間快到了請準時入座','R00002@gmail.com','123456',10,9000000,5,'宗翰','0937920525','[{"x":212,"y":142,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":1},{"x":287,"y":142,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":2},{"x":377,"y":142,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":3},{"x":457,"y":140,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":4},{"x":544,"y":144,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":5},{"x":213,"y":252,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":6},{"x":291,"y":254,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":7},{"x":375,"y":255,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":8},{"x":464,"y":256,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":9},{"x":555,"y":253,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":10},{"x":213,"y":343,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":11},{"x":290,"y":346,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":12},{"x":382,"y":344,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":13},{"x":465,"y":337,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":14},{"x":551,"y":338,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":15}]',TO_DATE('2020/09/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),'使用', '25.059346349923903', '121.56920343906535');
INSERT INTO RESINFO(RESID,RESNAME,RESADDID,RESIMG,BARRIERFREE ,PARENTCHILD,TRAFFIC,PARKING,PAYINFO,NOTIFCONT,RESEMAIL,RESPASSID,CURRENTWAITINGNUM ,SUBTIMEDIFF ,WAITDISTANCE ,CONTACT,CONTACTPHON,CORRDINATE,ADDDATE,STATUS,LAT,LNG)
                    VALUES('R' || lpad(RESINFO_seq.NEXTVAL, 5, '0'),'宗翰甜點','台北市中山區濱江街289號',EMPTY_BLOB(),'無','無','台北市中山區濱江街289號','台北市中山區濱江街289號前方100公尺','信用卡','您預定的時間快到了請準時入座','R00003@gmail.com','123456',10,9000000,5,'旭峰','0958195739','[{"x":209,"y":116,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":1},{"x":286,"y":116,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":2},{"x":371,"y":115,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":3},{"x":448,"y":115,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":4},{"x":540,"y":113,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":5},{"x":211,"y":197,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":6},{"x":282,"y":196,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":7},{"x":365,"y":196,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":8},{"x":448,"y":192,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":9},{"x":542,"y":193,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":10},{"x":212,"y":278,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":11},{"x":284,"y":275,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":12},{"x":363,"y":273,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":13},{"x":448,"y":273,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":14},{"x":545,"y":267,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":15}]',TO_DATE('2020/08/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),'使用', '25.072682034751615', '121.54272315360693');
INSERT INTO RESINFO(RESID,RESNAME,RESADDID,RESIMG,BARRIERFREE ,PARENTCHILD,TRAFFIC,PARKING,PAYINFO,NOTIFCONT,RESEMAIL,RESPASSID,CURRENTWAITINGNUM ,SUBTIMEDIFF ,WAITDISTANCE ,CONTACT,CONTACTPHON,CORRDINATE,ADDDATE,STATUS,LAT,LNG)
                    VALUES('R' || lpad(RESINFO_seq.NEXTVAL, 5, '0'),'承賢燒烤','台北市大同區南京西路34號',EMPTY_BLOB(),'無','無','台北市大同區南京西路34號','台北市大同區南京西路33號前方200公尺','信用卡','您預定的時間快到了請準時入座','R00004@gmail.com','123456',10,9000000,5,'承賢','0987987123','[{"x":226,"y":126,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":1},{"x":303,"y":128,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":2},{"x":378,"y":129,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":3},{"x":453,"y":134,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":4},{"x":531,"y":134,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":5},{"x":225,"y":232,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":6},{"x":299,"y":232,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":7},{"x":378,"y":230,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":8},{"x":454,"y":232,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":9},{"x":527,"y":229,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":10},{"x":220,"y":320,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":11},{"x":302,"y":318,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":12},{"x":382,"y":315,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":13},{"x":457,"y":311,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":14},{"x":538,"y":313,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":15}]',TO_DATE('2020/10/05 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),'使用', '25.053024008315045', '121.52000206172701');
INSERT INTO RESINFO(RESID,RESNAME,RESADDID,RESIMG,BARRIERFREE ,PARENTCHILD,TRAFFIC,PARKING,PAYINFO,NOTIFCONT,RESEMAIL,RESPASSID,CURRENTWAITINGNUM ,SUBTIMEDIFF ,WAITDISTANCE ,CONTACT,CONTACTPHON,CORRDINATE,ADDDATE,STATUS,LAT,LNG)
                    VALUES('R' || lpad(RESINFO_seq.NEXTVAL, 5, '0'),'瓊如buffet','台北市信義區基隆路一段335號',EMPTY_BLOB(),'無','無','台北市信義區基隆路一段335號','台北市信義區基隆路一段335號前方100公尺','信用卡','您預定的時間快到了請準時入座','R00005@gmail.com','123456',10,9000000,5,'瓊如','0968008236','[{"x":208,"y":151,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":1},{"x":283,"y":152,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":2},{"x":362,"y":154,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":3},{"x":444,"y":156,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":4},{"x":527,"y":157,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":5},{"x":205,"y":240,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":6},{"x":284,"y":238,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":7},{"x":359,"y":238,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":8},{"x":447,"y":239,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":9},{"x":529,"y":238,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":10},{"x":204,"y":320,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":11},{"x":280,"y":320,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":12},{"x":361,"y":317,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":13},{"x":445,"y":315,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":14},{"x":529,"y":314,"w":38,"h":38,"color":"no","itemNumber":4,"seatNumber":15}]',TO_DATE('2020/10/06 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),'使用', '25.034961452509375', '121.56118734715577');


commit;
commit;

--餐廳營業時間
CREATE SEQUENCE RESHOURS_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;
CREATE TABLE RESHOURS(
    RESHOURID VARCHAR2(20) NOT NULL,
    RESID VARCHAR2(30),
    OPENING TIMESTAMP,
    CLOSING TIMESTAMP,
    CONSTRAINT RESHOURS_RESHOURID_PK PRIMARY KEY (RESHOURID) 
    ,CONSTRAINT RESHOURS_RESID_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID)on delete cascade
);
INSERT INTO RESHOURS(RESHOURID,RESID,OPENING,CLOSING)VALUES('H' || lpad(RESHOURS_seq.NEXTVAL, 5, '0'),'R00001',TO_DATE('2020-12-06 09:00', 'yyyy-mm-dd hh24:mi'),TO_DATE('2020-12-02 21:00', 'yyyy-mm-dd hh24:mi'));
INSERT INTO RESHOURS(RESHOURID,RESID,OPENING,CLOSING)VALUES('H' || lpad(RESHOURS_seq.NEXTVAL, 5, '0'),'R00002',TO_DATE('2020-12-07 10:00', 'yyyy-mm-dd hh24:mi'),TO_DATE('2020-12-02 21:00', 'yyyy-mm-dd hh24:mi'));
INSERT INTO RESHOURS(RESHOURID,RESID,OPENING,CLOSING)VALUES('H' || lpad(RESHOURS_seq.NEXTVAL, 5, '0'),'R00003',TO_DATE('2020-12-07 11:00', 'yyyy-mm-dd hh24:mi'),TO_DATE('2020-12-02 22:00', 'yyyy-mm-dd hh24:mi'));
INSERT INTO RESHOURS(RESHOURID,RESID,OPENING,CLOSING)VALUES('H' || lpad(RESHOURS_seq.NEXTVAL, 5, '0'),'R00004',TO_DATE('2020-12-07 11:30', 'yyyy-mm-dd hh24:mi'),TO_DATE('2020-12-02 22:00', 'yyyy-mm-dd hh24:mi'));
INSERT INTO RESHOURS(RESHOURID,RESID,OPENING,CLOSING)VALUES('H' || lpad(RESHOURS_seq.NEXTVAL, 5, '0'),'R00005',TO_DATE('2020-12-07 12:00', 'yyyy-mm-dd hh24:mi'),TO_DATE('2020-12-02 23:00', 'yyyy-mm-dd hh24:mi'));
commit;

--廣告推播申請資料表
CREATE SEQUENCE ADDETAIL_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE ADDETAIL(
    ADID VARCHAR(30) NOT NULL,
    RESID VARCHAR(30),
    ADTITLE VARCHAR2(60),
    ADCONTENT CLOB,
    ADIMG BLOB,
    ADDATE DATE,
    ADTYPE VARCHAR2(60),
    REVIEWSTATUS VARCHAR2(60),
    ONSHELFTIME TIMESTAMP,
    OFFSHELFTIME TIMESTAMP,
    CONSTRAINT ADDETAIL_ADID_PK PRIMARY KEY (ADID)
    ,CONSTRAINT ADDETAIL_RESID_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID) on delete cascade
);

INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME)VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','全館八八折',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-03', 'yyyy-mm-dd'),'廣告','審核中',TO_DATE('2021/05/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2021-10-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME)VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','全館五折',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-10', 'yyyy-mm-dd'),'廣告','未審核',TO_DATE('2021/05/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2021-10/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME)VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','忠實顧客快來領取屬於你的優惠',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-03', 'yyyy-mm-dd'),'推播','不須審核',TO_DATE('2021/05/03 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),TO_DATE('2021-10-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME)VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','全館二折',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-03', 'yyyy-mm-dd'),'廣告','審核中',TO_DATE('2021/05/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2021-10-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME )VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','全館三折',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-03', 'yyyy-mm-dd'),'廣告','審核中',TO_DATE('2021/05/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2021-10-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO ADDETAIL(ADID ,RESID,ADTITLE ,ADCONTENT,ADIMG ,ADDATE ,ADTYPE ,REVIEWSTATUS ,ONSHELFTIME,OFFSHELFTIME)VALUES('AD' || lpad(ADDETAIL_seq.NEXTVAL, 5, '0'),'R00001','全館二折',EMPTY_CLOB(),EMPTY_BLOB(),TO_DATE('2020-11-03', 'yyyy-mm-dd'),'廣告','審核中',TO_DATE('2021/05/03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2021-10-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));

--輪播圖
create sequence carousel_seq
increment by 1
start with 1 
nomaxvalue
minvalue 1
nocycle
nocache;

create table carousel(
carouselid varchar2(20),  
resid varchar2(20),
carouselpic blob,
adddate timestamp,
constraint carousel_carouselid_pk primary key(carouselid)
,constraint carousel_resid_fk foreign key(resid) references resinfo(resid) on delete cascade
);

insert into carousel(carouselid,resid,carouselpic,adddate) values('CARO' || lpad(carousel_seq.nextval, 5, '0'),'R00001',empty_blob(),TO_DATE('2020-12-12 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));
commit;

--菜單
CREATE SEQUENCE MENU_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;
CREATE TABLE MENU (
 MEALID             VARCHAR2(20) NOT NULL,
 RESID              VARCHAR2(20) NOT NULL,
 CLASSNAME          VARCHAR2(30) NOT NULL,
 MEALNAME           VARCHAR2(30) NOT NULL,
 MEALPRICE          NUMBER NOT NULL,
 MEALIMG            BLOB ,
 MEALSTATUS         VARCHAR2(30) NOT NULL,
 ADDDATE            TIMESTAMP NOT NULL,
 CONSTRAINT MENU_PRIMARY_KEY PRIMARY KEY (MEALID)
 ,CONSTRAINT MENU_RESID_KEY FOREIGN KEY (RESID) REFERENCES RESINFO(RESID) on delete cascade
 );

INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00001','肉類','戰斧牛排',990,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00001','肉類','美國頂級菲力',1250,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00001','肉類','美國頂級肋眼牛排',1850,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 20:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00001','肉類','紐約客',2680,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00001','肉類','美國頂級老饕牛排',2950,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 18:48:51','yyyy-mm-dd hh24:mi:ss'));

INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00002','湯底','老佛爺玉善湯底',80,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 20:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00002','湯底','黃金養生藥膳',80,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 09:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00002','肉類','日本A5和牛',1580,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 11:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00002','湯底','野生活龍蝦鍋',1380,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 22:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00002','附餐','白飯',10,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 11:48:51','yyyy-mm-dd hh24:mi:ss'));

INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00003','甜點類','黑森林蛋糕',190,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00004','肉類','牛小排',390,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MENU VALUES ('EAT'||lpad(MENU_SEQ.NEXTVAL,5,'0'),'R00005','海鮮類','焗烤龍蝦',990,EMPTY_BLOB(),'上架',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
--commit;

--優惠券
CREATE SEQUENCE COUPON_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE COUPON (
COUPONID VARCHAR2 (20),
COUPONNAME VARCHAR2 (50),
INTRODUCE VARCHAR2 (600),
COUPONPIC BLOB,
STARTTIME TIMESTAMP,
ENDINGTIME TIMESTAMP,
COUSTATUS VARCHAR2 (6),
SALE NUMBER (5,1),
ADDDATE TIMESTAMP,
RESID VARCHAR2 (20),
CONSTRAINT COUPON_PK PRIMARY KEY (COUPONID)
,CONSTRAINT COUPON_RESID_FK FOREIGN KEY(RESID) REFERENCES RESINFO(RESID) on delete cascade
);

INSERT INTO COUPON (COUPONID, COUPONNAME, INTRODUCE, COUPONPIC, STARTTIME, ENDINGTIME, COUSTATUS, SALE, ADDDATE, RESID) VALUES ('COUP' || lpad(COUPON_SEQ.NEXTVAL, 5, '0'),'OO牛排店全館8折券','只要來到這裡, 無論是戰斧牛排, 骰子牛, 厚切牛排, 全館都能享有8折優惠!',EMPTY_BLOB() ,TO_DATE('2021-02-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2021-02-28 23:59:00', 'yyyy-mm-dd hh24:mi:ss'),'下架','8', TO_DATE('2020-01-18 15:29:00', 'yyyy-mm-dd hh24:mi:ss'), 'R00001' );
INSERT INTO COUPON (COUPONID, COUPONNAME, INTRODUCE, COUPONPIC, STARTTIME, ENDINGTIME, COUSTATUS, SALE, ADDDATE, RESID) VALUES ('COUP' || lpad(COUPON_SEQ.NEXTVAL, 5, '0'),'XX火鍋店尾牙優待6券','年終將近, 該好好犒賞自己!現正推出尾牙優惠活動, 凡使用本券者, 用餐人數達50人, 即可享有6折優惠!',EMPTY_BLOB() ,TO_DATE('2021-12-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2020-12-31 23:59:00', 'yyyy-mm-dd hh24:mi:ss'),'上架','6', TO_DATE('2020-11-25 20:29:00', 'yyyy-mm-dd hh24:mi:ss'), 'R00002' );
INSERT INTO COUPON (COUPONID, COUPONNAME, INTRODUCE, COUPONPIC, STARTTIME, ENDINGTIME, COUSTATUS, SALE, ADDDATE, RESID) VALUES ('COUP' || lpad(COUPON_SEQ.NEXTVAL, 5, '0'),'YY甜滋滋滿額打85折','甜食能使人發胖, 也可讓人有個好心情, 只要消費滿700元, 就可享有85折甜甜價喔!',EMPTY_BLOB() ,TO_DATE('2021-01-05 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2021-02-10 23:59:00', 'yyyy-mm-dd hh24:mi:ss'),'下架','8.5', TO_DATE('2020-12-20 08:29:00', 'yyyy-mm-dd hh24:mi:ss'), 'R00003' );
INSERT INTO COUPON (COUPONID, COUPONNAME, INTRODUCE, COUPONPIC, STARTTIME, ENDINGTIME, COUSTATUS, SALE, ADDDATE, RESID) VALUES ('COUP' || lpad(COUPON_SEQ.NEXTVAL, 5, '0'),'ZZ燒烤不怕你吃五折券','餓了很久?懷念香噴噴的燒烤嗎?只要拿到這張券, 包你吃不完兜著走!!',EMPTY_BLOB() ,TO_DATE('2021-03-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2021-04-30 23:59:00', 'yyyy-mm-dd hh24:mi:ss'),'上架','5', TO_DATE('2021-02-01 15:29:00', 'yyyy-mm-dd hh24:mi:ss'), 'R00004' );
INSERT INTO COUPON (COUPONID, COUPONNAME, INTRODUCE, COUPONPIC, STARTTIME, ENDINGTIME, COUSTATUS, SALE, ADDDATE, RESID) VALUES ('COUP' || lpad(COUPON_SEQ.NEXTVAL, 5, '0'),'buffet讓你fat!限時95折優惠券','眼花撩亂,令人食指大動的美味佳餚就在你眼前, 不怕你吃, 就怕你不知道該怎麼吃!只要擁有此優惠券, 就可享有95折優惠!',EMPTY_BLOB() ,TO_DATE('2021-02-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2021-04-22 23:59:00', 'yyyy-mm-dd hh24:mi:ss'),'下架','9.5', TO_DATE('2020-01-10 12:29:00', 'yyyy-mm-dd hh24:mi:ss'), 'R00005' );


--員工權限表
CREATE TABLE ROLEMANAGER (
 PURVIEWNUM          VARCHAR2(30) NOT NULL,
 PURCONTENT          VARCHAR2(30) NOT NULL,
 CONSTRAINT ROLEMANAGER_PRIMARY_KEY PRIMARY KEY (PURVIEWNUM));

INSERT INTO ROLEMANAGER VALUES ('1','所有功能');
INSERT INTO ROLEMANAGER VALUES ('2','新增菜單..等等');
INSERT INTO ROLEMANAGER VALUES ('3','僅能操作POS機');


--餐廳員工管理
CREATE SEQUENCE RESEMPMANAGER_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE RESEMPMANAGER (
 EMPID             VARCHAR2(20) NOT NULL,
 PURVIEWNUM        VARCHAR2(30) NOT NULL,
 RESID             VARCHAR2(20) NOT NULL,
 EMPPASSWORD       VARCHAR2(30) NOT NULL,
 EMPNAME           VARCHAR2(30) NOT NULL,
 EMPTEL            VARCHAR2(30) NOT NULL,
 EMPSTATUS         VARCHAR2(30) NOT NULL,
 ADDDATE           TIMESTAMP NOT NULL,
 CONSTRAINT RESEMPMANAGER_PRIMARY_KEY PRIMARY KEY (EMPID),
 CONSTRAINT RESEMPMANAGER_PURVIEWNUM_KEY FOREIGN KEY (PURVIEWNUM) REFERENCES ROLEMANAGER(PURVIEWNUM) on delete cascade
 ,CONSTRAINT RESEMPMANAGER_RESID_KEY FOREIGN KEY (RESID) REFERENCES RESINFO(RESID) on delete cascade
);

INSERT INTO RESEMPMANAGER VALUES ('EMP' || lpad(RESEMPMANAGER_SEQ.NEXTVAL,5,'0'),'1','R00001','123456','王一','0912345678','在職',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO RESEMPMANAGER VALUES ('EMP' || lpad(RESEMPMANAGER_SEQ.NEXTVAL,5,'0'),'2','R00001','234567','王二','0923456789','在職',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO RESEMPMANAGER VALUES ('EMP' || lpad(RESEMPMANAGER_SEQ.NEXTVAL,5,'0'),'3','R00001','345678','王三','0934567890','離職',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO RESEMPMANAGER VALUES ('EMP' || lpad(RESEMPMANAGER_SEQ.NEXTVAL,5,'0'),'1','R00001','456789','王四','0945678901','離職',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO RESEMPMANAGER VALUES ('EMP' || lpad(RESEMPMANAGER_SEQ.NEXTVAL,5,'0'),'3','R00001','567890','王五','0956789012','在職',TO_TIMESTAMP('2020-11-27 19:48:51','yyyy-mm-dd hh24:mi:ss'));

--消費者資訊表
CREATE SEQUENCE CUSTINFO_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE CUSTINFO (
CUSTID VARCHAR2 (20),
CUSTNAME VARCHAR2 (45),
CUSTTEL VARCHAR2 (10),
CUSTACCOUNT VARCHAR2 (30),
CUSTPASSWORD VARCHAR2 (20),
REGISTRATIONTIME TIMESTAMP,
CUSTSTATUS VARCHAR2 (20),
CUSTPICTURE BLOB,
CONSTRAINT CUSTINFO_PK PRIMARY KEY (CUSTID));

INSERT INTO CUSTINFO (CUSTID,CUSTNAME,CUSTTEL,CUSTACCOUNT,CUSTPASSWORD,REGISTRATIONTIME,CUSTSTATUS,CUSTPICTURE) VALUES ('C' || lpad(CUSTINFO_SEQ.NEXTVAL, 5, '0'), '王小明', '0987654321', 'C00001@gmail.com','123456', TO_DATE('2020-07-07 12:20:20', 'yyyy-mm-dd hh24:mi:ss'),'使用中',EMPTY_BLOB());
INSERT INTO CUSTINFO (CUSTID,CUSTNAME,CUSTTEL,CUSTACCOUNT,CUSTPASSWORD,REGISTRATIONTIME,CUSTSTATUS,CUSTPICTURE) VALUES ('C' || lpad(CUSTINFO_SEQ.NEXTVAL, 5, '0'), '李小白', '0912345678', 'C00002@gmail.com','123456', TO_DATE('2020-08-08 08:30:10', 'yyyy-mm-dd hh24:mi:ss'),'停權',EMPTY_BLOB());
INSERT INTO CUSTINFO (CUSTID,CUSTNAME,CUSTTEL,CUSTACCOUNT,CUSTPASSWORD,REGISTRATIONTIME,CUSTSTATUS,CUSTPICTURE) VALUES ('C' || lpad(CUSTINFO_SEQ.NEXTVAL, 5, '0'), '陳小華', '0922333444', 'C00003@gmail.com','123456', TO_DATE('2020-09-09 19:40:40', 'yyyy-mm-dd hh24:mi:ss'),'停權',EMPTY_BLOB());
INSERT INTO CUSTINFO (CUSTID,CUSTNAME,CUSTTEL,CUSTACCOUNT,CUSTPASSWORD,REGISTRATIONTIME,CUSTSTATUS,CUSTPICTURE) VALUES ('C' || lpad(CUSTINFO_SEQ.NEXTVAL, 5, '0'), '張大毛', '0933444555', 'C00004@gmail.com','123456', TO_DATE('2020-10-10 14:33:35', 'yyyy-mm-dd hh24:mi:ss'),'使用中',EMPTY_BLOB());
INSERT INTO CUSTINFO (CUSTID,CUSTNAME,CUSTTEL,CUSTACCOUNT,CUSTPASSWORD,REGISTRATIONTIME,CUSTSTATUS,CUSTPICTURE) VALUES ('C' || lpad(CUSTINFO_SEQ.NEXTVAL, 5, '0'), '吳小毛', '0944555666', 'C00005@gmail.com','123456', TO_DATE('2020-11-11 16:02:30', 'yyyy-mm-dd hh24:mi:ss'),'使用中',EMPTY_BLOB());

--訂單資訊
CREATE SEQUENCE ORDERINFO_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE ORDERINFO(
ORDERID       VARCHAR2(20),
RESID         VARCHAR2(20),
CUSTID         VARCHAR2(20),
SUBSCRIBER    VARCHAR2(20),
SUBPHONE      VARCHAR2(20),
ORDERTIME     TIMESTAMP,
SUBTIME       TIMESTAMP,
SUBNUMBER     NUMBER,
PAYSTATUS     VARCHAR2(20),
CHECKIN       VARCHAR2(20),
SEAT          VARCHAR2(50),
ORDERSTATUS   VARCHAR2(20),
CONSTRAINT ORDERINFO_ORDERID_PK PRIMARY KEY (ORDERID)
,CONSTRAINT ORDERINFO_RESID_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID) on delete cascade
,CONSTRAINT ORDERINFO_CUSID_FK FOREIGN KEY (CUSTID) REFERENCES CUSTINFO (CUSTID) on delete cascade           
);

INSERT INTO ORDERINFO (ORDERID,RESID,CUSTID,SUBSCRIBER,SUBPHONE,ORDERTIME,SUBTIME,SUBNUMBER,PAYSTATUS,CHECKIN,SEAT,ORDERSTATUS)
            VALUES('O'||lpad(ORDERINFO_seq.NEXTVAL,5,'0'),'R00001','C00001','王小明','0987654321',TO_DATE('2020/05/03 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/05/04 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),5,'已付款','未報到','沒選位','成立');
INSERT INTO ORDERINFO (ORDERID,RESID,CUSTID,SUBSCRIBER,SUBPHONE,ORDERTIME,SUBTIME,SUBNUMBER,PAYSTATUS,CHECKIN,SEAT,ORDERSTATUS)
            VALUES('O'||lpad(ORDERINFO_seq.NEXTVAL,5,'0'),'R00001','C00002','李小白','0912345678',TO_DATE('2020/05/04 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/05/05 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),5,'未付款','未報到','沒選位','成立');            


--訂單詳細
CREATE TABLE ORDERDET(
ORDERID        VARCHAR2(20),
MEALID         VARCHAR2(20),
MEALCOUNT      NUMBER,
CONSTRAINT ORDERDET_PRIMARY_KEY PRIMARY KEY (ORDERID,MEALID)
,CONSTRAINT ORDERDET_MEALID_FK FOREIGN KEY (MEALID) REFERENCES MENU (MEALID) on delete cascade
,CONSTRAINT ORDERDET_ORDERID_FK FOREIGN KEY (ORDERID) REFERENCES ORDERINFO (ORDERID) on delete cascade
);

INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT) 
            VALUES('O00001','EAT00001',2);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT)  
            VALUES('O00001','EAT00002',2);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT)  
            VALUES('O00001','EAT00003',2);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT) 
            VALUES('O00001','EAT00004',2);
            
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT) 
            VALUES('O00002','EAT00002',3);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT)
            VALUES('O00002','EAT00003',1);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT)
            VALUES('O00002','EAT00004',2);
INSERT INTO ORDERDET (ORDERID,MEALID,MEALCOUNT)
            VALUES('O00002','EAT00005',2);

COMMIT;

--消費者存放的優惠券
CREATE SEQUENCE COUPONFORCUST_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE COUPONFORCUST (
ACCESSSEQ VARCHAR2 (30),
RECIVERTIME TIMESTAMP,
USETIME TIMESTAMP,
COUPONSTATUS VARCHAR2 (10),
COUPONID VARCHAR2(20),
CUSTID VARCHAR2(20),
CONSTRAINT COUPONFORCUST_PK PRIMARY KEY (ACCESSSEQ)
,CONSTRAINT COUPONFORCUST_COUPONID_FK FOREIGN KEY(COUPONID) REFERENCES COUPON(COUPONID) on delete cascade
,CONSTRAINT COUPONFORCUST_CUSTID_FK FOREIGN KEY(CUSTID) REFERENCES CUSTINFO(CUSTID) on delete cascade
);

INSERT INTO COUPONFORCUST (ACCESSSEQ,RECIVERTIME,USETIME,COUPONSTATUS,COUPONID,CUSTID) VALUES ('CUSTCOUP' || lpad(COUPONFORCUST_SEQ.NEXTVAL, 5, '0'), TO_DATE('2020-01-01 12:20:20', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2020-03-05 20:10:20', 'yyyy-mm-dd hh24:mi:ss'),'已使用','COUP00001','C00001' );
INSERT INTO COUPONFORCUST (ACCESSSEQ,RECIVERTIME,USETIME,COUPONSTATUS,COUPONID,CUSTID) VALUES ('CUSTCOUP' || lpad(COUPONFORCUST_SEQ.NEXTVAL, 5, '0'), TO_DATE('2020-02-01 12:20:20', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2020-02-02 20:10:20', 'yyyy-mm-dd hh24:mi:ss'),'已使用','COUP00002','C00001' );
INSERT INTO COUPONFORCUST (ACCESSSEQ,RECIVERTIME,USETIME,COUPONSTATUS,COUPONID,CUSTID) VALUES ('CUSTCOUP' || lpad(COUPONFORCUST_SEQ.NEXTVAL, 5, '0'), TO_DATE('2020-03-05 12:20:20', 'yyyy-mm-dd hh24:mi:ss'), NULL ,'未使用','COUP00002','C00002' );

--消費者評論表格CUSTCOM
CREATE SEQUENCE CUSTCOM_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE CUSTCOM(
CUSTCOMID VARCHAR2(20),
RESID VARCHAR2(20),
CUSTID VARCHAR2(20),
CUSTCONTENT CLOB,
COMSTAR NUMBER,
COMTIME TIMESTAMP,
CONSTRAINT CUSTCOM_CUSTCOMID_PK PRIMARY KEY(CUSTCOMID)
,CONSTRAINT CUSTCOM_CUSTID_FK foreign key(CUSTID) references CUSTINFO(CUSTID) on delete cascade
,CONSTRAINT CUSTCOM_RESID_FK foreign key(RESID) references RESINFO(RESID) on delete cascade
);

INSERT INTO CUSTCOM(CUSTCOMID,RESID,CUSTID,CUSTCONTENT,COMSTAR,COMTIME)VALUES('COM' || lpad(CUSTCOM_SEQ.NEXTVAL, 5, '0'),'R00001','C00001','好吃的要命',5,TO_DATE('2020/12/02 12:00', 'yyyy/mm/dd hh24:mi'));
INSERT INTO CUSTCOM(CUSTCOMID,RESID,CUSTID,CUSTCONTENT,COMSTAR,COMTIME)VALUES('COM' || lpad(CUSTCOM_SEQ.NEXTVAL, 5, '0'),'R00001','C00002','我覺得還好',2,TO_DATE('2020/12/03 12:00', 'yyyy/mm/dd hh24:mi'));
INSERT INTO CUSTCOM(CUSTCOMID,RESID,CUSTID,CUSTCONTENT,COMSTAR,COMTIME)VALUES('COM' || lpad(CUSTCOM_SEQ.NEXTVAL, 5, '0'),'R00001','C00003','服務生把拇指插到湯裡，不燙嗎?',1,TO_DATE('2020/12/03 12:00', 'yyyy/mm/dd hh24:mi'));


--購物車清單
CREATE SEQUENCE SHOPPINGCART_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE SHOPPINGCART(
SHOPPINGCARTID VARCHAR2(20) NOT NULL,
CUSTID VARCHAR2(20) NOT NULL,
MEALID VARCHAR2(20) NOT NULL,
MEALCOUNT NUMBER NOT NULL,
ADDDATE TIMESTAMP NOT NULL
,CONSTRAINT SHOPPINGCART_CUSTOMER_FK FOREIGN KEY (CUSTID) REFERENCES CUSTINFO (CUSTID) on delete cascade
,CONSTRAINT SHOPPINGCART_MENU_FK FOREIGN KEY (MEALID) REFERENCES MENU (MEALID) on delete cascade
,CONSTRAINT SHOPPINGCART_PRIMARY_KEY PRIMARY KEY (SHOPPINGCARTID) 
);

INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00001',2,TO_DATE('2020/12/02 12:00', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00002',5,TO_DATE('2020/12/02 12:03', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00003',2,TO_DATE('2020/12/02 12:06', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00004',1,TO_DATE('2020/12/02 12:07', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00005',1,TO_DATE('2020/12/02 12:08', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00006',2,TO_DATE('2020/12/02 10:08', 'yyyy/mm/dd hh24:mi'));
INSERT INTO SHOPPINGCART(SHOPPINGCARTID,CUSTID,MEALID,MEALCOUNT,ADDDATE)VALUES('S' || lpad(SHOPPINGCART_seq.NEXTVAL, 5, '0'),'C00001','EAT00010',10,TO_DATE('2020/12/02 10:10', 'yyyy/mm/dd hh24:mi'));



--我的收藏
create sequence favorites_seq
increment by 1
start with 1 
nomaxvalue
minvalue 1
nocycle
nocache;

create table favorites(
favoritesid varchar2(20),  
custid varchar2(20),
resid varchar2(20),
favoritestatus varchar2(20),
adddate timestamp,
constraint favorites_favoritesid_pk primary key(favoritesid)
,constraint favorites_custid_fk foreign key(custid) references custinfo(custid) on delete cascade
,constraint favorites_resid_fk foreign key(resid) references resinfo(resid) on delete cascade
);
commit;
insert into favorites(favoritesid,custid,resid,favoritestatus,adddate) values('FAV' || lpad(favorites_seq.nextval, 5, '0'),'C00001','R00001','已收藏',TO_DATE('2020-01-01 12:00:00', 'yyyy-mm-dd hh24:mi:ss'));

--瀏覽紀錄
CREATE SEQUENCE VIEWHIS_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE VIEWHIS(
VIEWID        VARCHAR2(20),
CUSTID        VARCHAR(20),
RESID         VARCHAR2(20),
VIEWDATE      TIMESTAMP,
CONSTRAINT VIEWHIS_VIEWID_PK PRIMARY KEY (VIEWID)
,CONSTRAINT VIEWHIS_CUSTID_FK FOREIGN KEY (CUSTID) REFERENCES CUSTINFO (CUSTID) on delete cascade
,CONSTRAINT VIEWHIS_RESID_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID) on delete cascade   
);

INSERT INTO VIEWHIS (VIEWID,CUSTID,RESID,VIEWDATE)
            VALUES('V'||lpad(VIEWHIS_seq.NEXTVAL,5,'0'),'C00001','R00001',TO_DATE('2020/05/03 12:00:00', 'yyyy/mm/dd hh24:mi:ss'));
            
COMMIT;           

--封鎖次數表
CREATE SEQUENCE BLOCKLIST_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE BLOCKLIST(
BLOCKID VARCHAR2(20) NOT NULL,
RESID VARCHAR2(20) NOT NULL,
CUSTID VARCHAR2(20) NOT NULL,
ADDDATE  TIMESTAMP NOT NULL
,CONSTRAINT BLOCKLIST_CUSTOMER_FK FOREIGN KEY (CUSTID) REFERENCES CUSTINFO (CUSTID) on delete cascade
,CONSTRAINT BLOCKLIST_RESTAURANT_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID) on delete cascade
,CONSTRAINT  BLOCKLIST_PRIMARY_KEY PRIMARY KEY (BLOCKID)
);
INSERT INTO BLOCKLIST(BLOCKID,RESID,CUSTID,ADDDATE)VALUES('BL' || lpad(BLOCKLIST_seq.NEXTVAL, 5, '0'),'R00001','C00001',TO_DATE('2020/12/02 12:00', 'yyyy/mm/dd hh24:mi'));

--消費者候位資訊表
CREATE SEQUENCE WAITINGINFO_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE WAITINGINFO(
SERIAL VARCHAR2(20) NOT NULL,
CUSTID VARCHAR2(20) NOT NULL,
CUSTWAITINGNUM NUMBER NOT NULL,
WAITINGDATE DATE NOT NULL,
PEOPLE NUMBER NOT NULL,
ISPASS VARCHAR2(15) NOT NULL,
RESID VARCHAR2(20) NOT NULL
,CONSTRAINT WAITINGLIST_PRIMARY_KEY PRIMARY KEY (SERIAL)
,CONSTRAINT WAITINGLIST_CUSTOMER_FK FOREIGN KEY (CUSTID) REFERENCES CUSTINFO (CUSTID)
,CONSTRAINT WAITINGLIST_RESTAURANT_FK FOREIGN KEY (RESID) REFERENCES RESINFO (RESID)
);
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00001',20,SYSDATE,5,'是','R00001');
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00001',20,SYSDATE,5,'是','R00002');
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00001',20,SYSDATE,5,'是','R00003');
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00002',20,SYSDATE,5,'是','R00001');
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00003',20,SYSDATE,5,'是','R00001');
INSERT INTO WAITINGINFO(SERIAL,CUSTID,CUSTWAITINGNUM,WAITINGDATE,PEOPLE,ISPASS,RESID)VALUES('SER' || lpad(WAITINGINFO_seq.NEXTVAL, 5, '0'),'C00004',20,SYSDATE,5,'是','R00001');

-- 後台權限表
CREATE TABLE BACKROLEMANAGER(
MANPURVIEW     VARCHAR2(20),
PURVIEWCONTENT VARCHAR2(20)
,CONSTRAINT BACKROLEMANAGER_MANPURVIEW_PK PRIMARY KEY (MANPURVIEW)

);
INSERT INTO BACKROLEMANAGER(MANPURVIEW,PURVIEWCONTENT) VALUES ('1','系統管理者');
INSERT INTO BACKROLEMANAGER(MANPURVIEW,PURVIEWCONTENT) VALUES ('2','二級管理者');

-- 管理員資料表格
CREATE SEQUENCE ADMININFO_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE TABLE ADMININFO(
MANID       VARCHAR2(20) NOT NULL,
MANNAME     VARCHAR2(20),
MANPASSWORD VARCHAR2(20),
MANMAIL     VARCHAR2(40),
MANREALNAME VARCHAR2(20),
MANTEL      VARCHAR2(20),
MANSTATUS   VARCHAR2(20),
MANPURVIEW  VARCHAR2(20)
,CONSTRAINT ADMININFO_MANID_PK PRIMARY KEY (MANID)
,CONSTRAINT ADMININFO_MANPURVIEW_FK FOREIGN KEY(MANPURVIEW) REFERENCES BACKROLEMANAGER(MANPURVIEW)on delete cascade
);
INSERT INTO ADMININFO(MANID,MANNAME,MANPASSWORD,MANMAIL,MANREALNAME,MANTEL,MANSTATUS,MANPURVIEW) VALUES('MAN' || lpad(ADMININFO_seq.NEXTVAL, 5, '0'),'Admin_01','123456','admin_01@gmail.com','林先生','0912345678','使用中','1');
INSERT INTO ADMININFO(MANID,MANNAME,MANPASSWORD,MANMAIL,MANREALNAME,MANTEL,MANSTATUS,MANPURVIEW) VALUES('MAN' || lpad(ADMININFO_seq.NEXTVAL, 5, '0'),'Admin_02','123456','admin_02@gmail.com','王先生','0912345678','使用中','2');


CREATE TABLE RESSEAT(
RESID VARCHAR2(20),
TIME VARCHAR2(50),
SEATDATA CLOB
,CONSTRAINT RESSEAT_RESID_PK PRIMARY KEY (RESID,TIME)
,CONSTRAINT RESSEAT_RESID_FK FOREIGN KEY(RESID) REFERENCES RESINFO (RESID) on delete cascade
);
INSERT INTO RESSEAT(RESID,TIME,SEATDATA)VALUES('R00001','now','[{"x":"240","y":"104","w":"40","h":"40","color":"red","seatNumber":"1","itemNumber":"2"},{"x":"317","y":"102","w":"38","h":"38","color":"no","seatNumber":"2","itemNumber":"4"},{"x":"398","y":"100","w":"40","h":"40","color":"red","seatNumber":"3","itemNumber":"2"},{"x":"493","y":"106","w":"38","h":"38","color":"no","seatNumber":"4","itemNumber":"4"},{"x":"584","y":"105","w":"38","h":"38","color":"no","seatNumber":"5","itemNumber":"4"},{"x":"234","y":"188","w":"40","h":"40","color":"red","seatNumber":"6","itemNumber":"2"},{"x":"316","y":"185","w":"40","h":"40","color":"red","seatNumber":"7","itemNumber":"2"},{"x":"398","y":"187","w":"38","h":"38","color":"no","seatNumber":"8","itemNumber":"4"},{"x":"492","y":"184","w":"38","h":"38","color":"no","seatNumber":"9","itemNumber":"4"},{"x":"584","y":"182","w":"38","h":"38","color":"no","seatNumber":"10","itemNumber":"4"},{"x":"234","y":"278","w":"40","h":"40","color":"red","seatNumber":"11","itemNumber":"2"},{"x":"316","y":"276","w":"38","h":"38","color":"no","seatNumber":"12","itemNumber":"4"},{"x":"397","y":"274","w":"38","h":"38","color":"no","seatNumber":"13","itemNumber":"4"},{"x":"493","y":"271","w":"38","h":"38","color":"no","seatNumber":"14","itemNumber":"4"},{"x":"588","y":"270","w":"38","h":"38","color":"no","seatNumber":"15","itemNumber":"4"}]');
INSERT INTO RESSEAT(RESID,TIME,SEATDATA)VALUES('R00002','now','[{"x":"212","y":"142","w":"40","h":"40","color":"red","seatNumber":"1","itemNumber":"2"},{"x":"287","y":"142","w":"40","h":"40","color":"red","seatNumber":"2","itemNumber":"2"},{"x":"377","y":"142","w":"40","h":"40","color":"red","seatNumber":"3","itemNumber":"2"},{"x":"457","y":"140","w":"40","h":"40","color":"red","seatNumber":"4","itemNumber":"2"},{"x":"544","y":"144","w":"40","h":"40","color":"red","seatNumber":"5","itemNumber":"2"},{"x":"213","y":"252","w":"40","h":"40","color":"red","seatNumber":"6","itemNumber":"2"},{"x":"291","y":"254","w":"40","h":"40","color":"red","seatNumber":"7","itemNumber":"2"},{"x":"375","y":"255","w":"40","h":"40","color":"red","seatNumber":"8","itemNumber":"2"},{"x":"464","y":"256","w":"40","h":"40","color":"red","seatNumber":"9","itemNumber":"2"},{"x":"555","y":"253","w":"40","h":"40","color":"red","seatNumber":"10","itemNumber":"2"},{"x":"213","y":"343","w":"38","h":"38","color":"no","seatNumber":"11","itemNumber":"4"},{"x":"290","y":"346","w":"38","h":"38","color":"no","seatNumber":"12","itemNumber":"4"},{"x":"382","y":"344","w":"38","h":"38","color":"no","seatNumber":"13","itemNumber":"4"},{"x":"465","y":"337","w":"38","h":"38","color":"no","seatNumber":"14","itemNumber":"4"},{"x":"551","y":"338","w":"38","h":"38","color":"no","seatNumber":"15","itemNumber":"4"}]');
INSERT INTO RESSEAT(RESID,TIME,SEATDATA)VALUES('R00003','now','[{"x":"209","y":"116","w":"40","h":"40","color":"red","seatNumber":"1","itemNumber":"2"},{"x":"286","y":"116","w":"40","h":"40","color":"red","seatNumber":"2","itemNumber":"2"},{"x":"371","y":"115","w":"40","h":"40","color":"red","seatNumber":"3","itemNumber":"2"},{"x":"448","y":"115","w":"40","h":"40","color":"red","seatNumber":"4","itemNumber":"2"},{"x":"540","y":"113","w":"38","h":"38","color":"no","seatNumber":"5","itemNumber":"4"},{"x":"211","y":"197","w":"38","h":"38","color":"no","seatNumber":"6","itemNumber":"4"},{"x":"282","y":"196","w":"38","h":"38","color":"no","seatNumber":"7","itemNumber":"4"},{"x":"365","y":"196","w":"38","h":"38","color":"no","seatNumber":"8","itemNumber":"4"},{"x":"448","y":"192","w":"38","h":"38","color":"no","seatNumber":"9","itemNumber":"4"},{"x":"542","y":"193","w":"38","h":"38","color":"no","seatNumber":"10","itemNumber":"4"},{"x":"212","y":"278","w":"38","h":"38","color":"no","seatNumber":"11","itemNumber":"4"},{"x":"284","y":"275","w":"38","h":"38","color":"no","seatNumber":"12","itemNumber":"4"},{"x":"363","y":"273","w":"38","h":"38","color":"no","seatNumber":"13","itemNumber":"4"},{"x":"448","y":"273","w":"38","h":"38","color":"no","seatNumber":"14","itemNumber":"4"},{"x":"545","y":"267","w":"38","h":"38","color":"no","seatNumber":"15","itemNumber":"4"}]');
INSERT INTO RESSEAT(RESID,TIME,SEATDATA)VALUES('R00004','now','[{"x":"226","y":"126","w":"38","h":"38","color":"no","seatNumber":"1","itemNumber":"4"},{"x":"303","y":"128","w":"38","h":"38","color":"no","seatNumber":"2","itemNumber":"4"},{"x":"378","y":"129","w":"38","h":"38","color":"no","seatNumber":"3","itemNumber":"4"},{"x":"453","y":"134","w":"38","h":"38","color":"no","seatNumber":"4","itemNumber":"4"},{"x":"531","y":"134","w":"38","h":"38","color":"no","seatNumber":"5","itemNumber":"4"},{"x":"225","y":"232","w":"38","h":"38","color":"no","seatNumber":"6","itemNumber":"4"},{"x":"299","y":"232","w":"40","h":"40","color":"red","seatNumber":"7","itemNumber":"2"},{"x":"378","y":"230","w":"40","h":"40","color":"red","seatNumber":"8","itemNumber":"2"},{"x":"454","y":"232","w":"38","h":"38","color":"no","seatNumber":"9","itemNumber":"4"},{"x":"527","y":"229","w":"38","h":"38","color":"no","seatNumber":"10","itemNumber":"4"},{"x":"220","y":"320","w":"38","h":"38","color":"no","seatNumber":"11","itemNumber":"4"},{"x":"302","y":"318","w":"40","h":"40","color":"red","seatNumber":"12","itemNumber":"2"},{"x":"382","y":"315","w":"38","h":"38","color":"no","seatNumber":"13","itemNumber":"4"},{"x":"457","y":"311","w":"40","h":"40","color":"red","seatNumber":"14","itemNumber":"2"},{"x":"538","y":"313","w":"40","h":"40","color":"red","seatNumber":"15","itemNumber":"2"}]');
INSERT INTO RESSEAT(RESID,TIME,SEATDATA)VALUES('R00005','now','[{"x":"208","y":"151","w":"40","h":"40","color":"red","seatNumber":"1","itemNumber":"2"},{"x":"283","y":"152","w":"40","h":"40","color":"red","seatNumber":"2","itemNumber":"2"},{"x":"362","y":"154","w":"40","h":"40","color":"red","seatNumber":"3","itemNumber":"2"},{"x":"444","y":"156","w":"40","h":"40","color":"red","seatNumber":"4","itemNumber":"2"},{"x":"527","y":"157","w":"38","h":"38","color":"no","seatNumber":"5","itemNumber":"4"},{"x":"205","y":"240","w":"40","h":"40","color":"red","seatNumber":"6","itemNumber":"2"},{"x":"284","y":"238","w":"40","h":"40","color":"red","seatNumber":"7","itemNumber":"2"},{"x":"359","y":"238","w":"40","h":"40","color":"red","seatNumber":"8","itemNumber":"2"},{"x":"447","y":"239","w":"40","h":"40","color":"red","seatNumber":"9","itemNumber":"2"},{"x":"529","y":"238","w":"38","h":"38","color":"no","seatNumber":"10","itemNumber":"4"},{"x":"204","y":"320","w":"40","h":"40","color":"red","seatNumber":"11","itemNumber":"2"},{"x":"280","y":"320","w":"40","h":"40","color":"red","seatNumber":"12","itemNumber":"2"},{"x":"361","y":"317","w":"40","h":"40","color":"red","seatNumber":"13","itemNumber":"2"},{"x":"445","y":"315","w":"40","h":"40","color":"red","seatNumber":"14","itemNumber":"2"},{"x":"529","y":"314","w":"38","h":"38","color":"no","seatNumber":"15","itemNumber":"4"}]');

commit;