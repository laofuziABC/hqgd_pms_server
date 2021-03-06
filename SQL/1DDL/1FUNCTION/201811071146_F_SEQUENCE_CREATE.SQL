prompt MYSQL Developer import file
prompt Created on 2018-11-07 by yaorong
prompt Audited on 2018-11-07 by yaorong

prompt 201811071146_F_SEQUENCE_CREATE.SQL Start!

/* 创建得到 当前 序列值函数*/
DELIMITER $$
DROP FUNCTION IF EXISTS CURRVAL $$

CREATE FUNCTION CURRVAL (SEQ_NAME VARCHAR (50)) RETURNS INTEGER CONTAINS SQL 
BEGIN
  DECLARE current INTEGER ;
  SET current = 0 ;
  SELECT 
    CURRENT_VALUE INTO current 
  FROM
    T_SEQUENCE 
  WHERE SEQUENCE_NAME = SEQ_NAME ;
  RETURN current ;
END $$

DELIMITER ;

/* 创建得到 下一个 序列值函数*/
DELIMITER $$
DROP FUNCTION IF EXISTS NEXTVAL $$

CREATE FUNCTION NEXTVAL (SEQ_NAME VARCHAR (50)) RETURNS INTEGER CONTAINS SQL 
BEGIN
  UPDATE 
    T_SEQUENCE 
  SET
    CURRENT_VALUE = CURRENT_VALUE + INCREMENT 
  WHERE SEQUENCE_NAME = SEQ_NAME ;
  RETURN CURRVAL (SEQ_NAME) ;
END $$

DELIMITER ;

prompt 201811071146_F_SEQUENCE_CREATE.SQL End!
