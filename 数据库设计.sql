DROP DATABASE IF EXISTS oa;
CREATE DATABASE oa;
USE oa;
/* Table1: claim_voucher       报销单*/
CREATE TABLE claim_voucher
(
   id                   INT NOT NULL AUTO_INCREMENT,
   cause                VARCHAR(100),
   create_sn            CHAR(5),
   create_time          DATETIME,
   next_deal_sn         CHAR(5),
   total_amount         DOUBLE,
   STATUS               VARCHAR(20),
   PRIMARY KEY (id)
);
/* Table2: claim_voucher_item         报销单明细*/
CREATE TABLE claim_voucher_item
(
   id                   INT NOT NULL AUTO_INCREMENT,
   claim_voucher_id     INT,
   item                 VARCHAR(20),
   amount               DOUBLE,
   COMMENT              VARCHAR(100),
   PRIMARY KEY (id)
);
/* Table3: deal_record                 处理记录*/
CREATE TABLE deal_record
(
   id                   INT NOT NULL AUTO_INCREMENT,
   claim_voucher_id     INT,
   deal_sn              CHAR(5),
   deal_time            DATETIME,
   deal_way             VARCHAR(20),
   deal_result          VARCHAR(20),
   COMMENT              VARCHAR(100),
   PRIMARY KEY (id)
);
/* Table4: department                 部门*/
CREATE TABLE department
(
   sn                   CHAR(5) NOT NULL,
   NAME                 VARCHAR(20),
   address              VARCHAR(100),
   PRIMARY KEY (sn)
);
/* Table5: employee                    员工*/
CREATE TABLE employee
(
   sn                   CHAR(5) NOT NULL,
   PASSWORD             VARCHAR(20),
   NAME                 VARCHAR(20),
   department_sn        CHAR(5),
   post                 VARCHAR(20),
   PRIMARY KEY (sn)
);
/* Table6: idea       员工系统意见征集*/
CREATE TABLE idea
(
   id                   INT NOT NULL AUTO_INCREMENT,
   idea_sn                   CHAR(5) NOT NULL,
   idea_title           VARCHAR(200),
   idea_content         VARCHAR(500),
   idea_time            DATETIME,
   PRIMARY KEY (id)
);
/*Table7:idea_comment 员工意见评论表*/
CREATE TABLE idea_comment
(
id INT NOT NULL AUTO_INCREMENT,
comment_sn INT NOT NULL,
commentfolk_sn CHAR(5) NOT NULL, 
content     VARCHAR(200),
comment_time   DATETIME,
PRIMARY KEY(id)
)
DROP TABLE idea_comment
SELECT * FROM idea_comment
/*table8:article     员工文章推荐表*/
CREATE TABLE article
(
id INT NOT NULL AUTO_INCREMENT,
article_sn CHAR(5) NOT NULL,
article_tltle VARCHAR(200),
article_content VARCHAR(300),
article_link    VARCHAR(200),
article_time    DATETIME,
PRIMARY KEY(id)
)
/*Table9:article_comment 文章推荐评论表*/
CREATE TABLE article_comment
(
id INT NOT NULL AUTO_INCREMENT,
comment_sn INT NOT NULL,
commentfolk_sn CHAR(5) NOT NULL, 
content     VARCHAR(200),
comment_time   DATETIME,
PRIMARY KEY(id)
)
DROP 

/* Table10: unrequest                      不符合要求的报销单公示*/
CREATE TABLE unrequest
(
   id                   INT NOT NULL AUTO_INCREMENT,
   STATUS               VARCHAR(20),
   cause                VARCHAR(100),
   amount               DOUBLE,
   PRIMARY KEY (id)
);
/* Table11: good                      符合要求的报销单公示*/
CREATE TABLE good
(
   id                   INT NOT NULL AUTO_INCREMENT,
   sn                   CHAR(5) NOT NULL,
   NAME                 VARCHAR(20),
   post                 VARCHAR(20),
   PRIMARY KEY (id)
);
/*Table12:report                       公示栏   */
CREATE TABLE report
(
  id  INT NOT NULL AUTO_INCREMENT,
  sn  CHAR(5) NOT NULL,
  content VARCHAR(500),
  report_time  DATETIME,
  continue_time VARCHAR(20),
  PRIMARY KEY(id)
);
/*第一次创建（审核系统主体） */ 
ALTER TABLE employee ADD CONSTRAINT FK_Reference_1 FOREIGN KEY (department_sn)
      REFERENCES department (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键1 department_sn作为employee的外键 但是是department表的主键 */
      
ALTER TABLE claim_voucher ADD CONSTRAINT FK_Reference_2 FOREIGN KEY (next_deal_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键2 next_deal_sn作为claim_voucher的外键 但是是employee的主键*/

ALTER TABLE claim_voucher ADD CONSTRAINT FK_Reference_3 FOREIGN KEY (create_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
       /*外键3 create_sn作为claim_voucher的外键 但是是employee的主键*/

ALTER TABLE claim_voucher_item ADD CONSTRAINT FK_Reference_4 FOREIGN KEY (claim_voucher_id)
      REFERENCES claim_voucher (id) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键4 claim_voucher_id作为claim_voucher_item的外键 但是是claim_voucher 的主键*/

ALTER TABLE deal_record ADD CONSTRAINT FK_Reference_5 FOREIGN KEY (claim_voucher_id)
      REFERENCES claim_voucher (id) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键5 claim_voucher_id作为deal_record的外键 但是是claim_voucher的主键*/

ALTER TABLE deal_record ADD CONSTRAINT FK_Reference_6 FOREIGN KEY (deal_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键6 deal_sn作为deal_record的外键 但是是employee 的主键*/
         
/*第二次创建（是在创建两个三角里的其中一条线路的时候） */    
 ALTER TABLE idea ADD CONSTRAINT FK_Reference_7 FOREIGN KEY (idea_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT; 
      /*外键7 idea_sn作为idea的外键 但是是employee 的主键*/    
      
 ALTER TABLE idea_comment ADD CONSTRAINT FK_Reference_8 FOREIGN KEY (comment_sn)
      REFERENCES idea(id) ON DELETE RESTRICT ON UPDATE RESTRICT;
       /*外键8 comment_sn作为idea_comment的外键 但是是idea(id) 的主键*/   
       
 ALTER TABLE article ADD CONSTRAINT FK_Reference_9 FOREIGN KEY (article_sn)
      REFERENCES employee(sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键9 article_sn作为article的外键 但是是employee(sn) 的主键*/ 
      
 ALTER TABLE article_comment ADD CONSTRAINT FK_Reference_10 FOREIGN KEY (comment_sn)
      REFERENCES article(id) ON DELETE RESTRICT ON UPDATE RESTRICT;
       /*外键10 comment_sn作为article_comment的外键 但是是article(id) 的主键*/ 
 /*第三次外键(是在创建两个三角里面另外的一条线路的时候)*/
 
 ALTER TABLE idea_comment ADD CONSTRAINT FK_Reference_11 FOREIGN KEY (commentfolk_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
       /*外键11 commentfolk_sn作为idea_comment 的外键 但是是employee (sn) 的主键*/ 
       
 ALTER TABLE article_comment ADD CONSTRAINT FK_Reference_12 FOREIGN KEY (commentfolk_sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键12 commentfolk_sn作为article_comment 的外键 但是是employee (sn) 的主键*/ 
 /*第四波外键（是报销单公示栏的外键）*/
 
  ALTER TABLE report ADD CONSTRAINT FK_Reference_13 FOREIGN KEY (sn)
      REFERENCES employee (sn) ON DELETE RESTRICT ON UPDATE RESTRICT;
      /*外键13 sn作为report的外键 但是是employee (sn) 的主键*/
      

INSERT INTO department VALUES('10001','总经理办公室','星星大厦E座1201');
INSERT INTO department VALUES('10002','财务部','星星大厦E座1202');
INSERT INTO department VALUES('10003','事业部','星星大厦E座1101');

INSERT INTO employee VALUES('10001','000000','刘备','10001','总经理');
INSERT INTO employee VALUES('10002','000000','孙尚香','10002','财务');
INSERT INTO employee VALUES('10003','000000','关羽','10003','部门经理');
INSERT INTO employee VALUES('10004','000000','周仓','10003','员工');

CREATE TABLE idea
(
   id                   INT NOT NULL AUTO_INCREMENT,
   sn                   CHAR(5) NOT NULL,
   post                 VARCHAR(20),
   comment_content        CHAR(50),
   comment_time            DATETIME,
   PRIMARY KEY (id)
);
DROP TABLE idea
CREATE TABLE unrequest
(
   id                   INT NOT NULL AUTO_INCREMENT,
   STATUS               VARCHAR(20),
   cause                VARCHAR(100),
   amount               DOUBLE,
   PRIMARY KEY (id)
);
INSERT INTO unrequest (STATUS,cause,amount) VALUES ('已打回','理由不恰当',2000)
INSERT INTO unrequest (STATUS,cause,amount) VALUES ('已打回','金额超过规定数目',200000)
INSERT INTO unrequest (STATUS,cause,amount) VALUES ('待复审','无权限',500)
INSERT INTO unrequest (STATUS,cause,amount) VALUES ('已打回','请详细查询报告书',500)
INSERT INTO unrequest (STATUS,cause,amount) VALUES ('待复审','理由不恰当',400)
SELECT * FROM unrequest
DELETE FROM idea WHERE id=1


CREATE TABLE good
(
   id                   INT NOT NULL AUTO_INCREMENT,
   sn                   CHAR(5) NOT NULL,
   NAME                 VARCHAR(20),
   post                 VARCHAR(20),
   PRIMARY KEY (id)
);
INSERT INTO good (sn,NAME,post) VALUES ('10009','刘备','总经理')
INSERT INTO good (sn,NAME,post) VALUES ('10006','孙尚香','员工')
INSERT INTO good (sn,NAME,post) VALUES ('10000','关羽','部门经理')
INSERT INTO good (sn,NAME,post) VALUES ('10003','曹操','员工')
INSERT INTO good (sn,NAME,post) VALUES ('10004','zhy','总经理')
SELECT * FROM good
INSERT INTO idea (sn,post,comment_content,comment_time) VALUES ('小明','总经理','希望可以涨工资',NOW())
INSERT INTO idea (sn,post,comment_content,comment_time) VALUES ('小花','员工','希望可以涨工资',NOW())
INSERT INTO idea (sn,post,comment_content,comment_time) VALUES ('小亮','部门经理','希望可以涨工资',NOW())
INSERT INTO idea (sn,post,comment_content,comment_time) VALUES ('哈哈哈','总经理','平台需要分清权限',NOW())
INSERT INTO idea (sn,post,comment_content,comment_time) VALUES ('LL','员工','平台界面需要美化',NOW())
SHOW ENGINES
