prompt MYSQL Developer import file
prompt Created on 2018-11-07 by yaorong
prompt Audited on 2018-11-07 by yaorong

prompt 201811071344_CONF_SYS_DICTIONARY_ITEM_CREATE.SQL Start!

CREATE TABLE IF NOT EXISTS CONF_SYS_DICTIONARY_ITEM (
  ITEM_ID INT(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  DICT_ID INT(11) NOT NULL COMMENT '字典编号',
  ITEM_CODE VARCHAR(50) NOT NULL COMMENT '项目编码',
  ITEM_NAME VARCHAR(100) NOT NULL COMMENT '项目名称',
  ITEM_VALUE VARCHAR(1000) NOT NULL COMMENT '项目值',
  ITEM_ORDER VARCHAR(4) NOT NULL COMMENT '项目排序',
  COMMENTS VARCHAR(200) NOT NULL COMMENT '项目说明',
  ENABLE_FLAG VARCHAR(4) NOT NULL DEFAULT '1' COMMENT '启用标志(0:禁用;1:启用);默认:1启用',
  CREATOR VARCHAR(50) NOT NULL COMMENT '创建者',
  CREATE_TIME DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  UPDATER VARCHAR(50) NOT NULL COMMENT '更新者',
  UPDATE_TIME TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (ITEM_ID),
  UNIQUE KEY UNIQUE_ITEM_CODE (ITEM_CODE),
  KEY INDEX_DICT_ID (DICT_ID)
) ENGINE=INNODB COMMENT='系统字典项(CONF_SYS_DICTIONARY_ITEM)';


prompt 201811071144_CONF_SYS_DICTIONARY_ITEM_CREATE.SQL End! 