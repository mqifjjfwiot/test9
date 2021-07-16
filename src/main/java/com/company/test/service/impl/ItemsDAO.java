package com.company.test.service.impl;


import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.test.service.ItemsDTO;


@Repository
public class ItemsDAO  {
	
	@Resource(name="itemstemplate")
	private SqlSessionTemplate sqlMapper;
	
	
	public ItemsDTO selectOne(Map map) {		
		return sqlMapper.selectOne("itemsSelectOne", map);
	}

	
	public int insert(Map map) {
		
		return sqlMapper.insert("itemsInsert", map);
	}

	
	public int delete(Map map) {
		
		return sqlMapper.delete("itemsDelete",map);
	}

	
	public int update(Map map) {		
		return sqlMapper.update("itemsUpdate",map);
	}
	
	public ItemsDTO shopping(Map map) {		
		return sqlMapper.selectOne("itemsShopping",map);
	}
}
