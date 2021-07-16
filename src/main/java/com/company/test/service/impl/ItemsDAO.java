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
	
	
	public ItemsDTO selectOne(ItemsDTO dto) {		
		return sqlMapper.selectOne("itemsSelectOne", dto);
	}

	
	public int insert(ItemsDTO dto) {
		
		return sqlMapper.insert("itemsInsert", dto);
	}

	
	public int delete(ItemsDTO dto) {
		
		return sqlMapper.delete("itemsDelete",dto);
	}

	
	public int update(ItemsDTO dto) {		
		return sqlMapper.update("itemsUpdate",dto);
	}
	
	public ItemsDTO shopping(ItemsDTO dto) {		
		return sqlMapper.selectOne("itemsShopping",dto);
	}
}
