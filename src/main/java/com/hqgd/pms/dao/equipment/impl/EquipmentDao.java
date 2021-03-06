package com.hqgd.pms.dao.equipment.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hqgd.pms.dao.equipment.IEquipmentDao;
import com.hqgd.pms.domain.EquipmentInfo;
@Repository
public class EquipmentDao implements IEquipmentDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<EquipmentInfo> select(String param) {
		return sqlSessionTemplate.selectList("selectAllEquipment", param);
	}

}
