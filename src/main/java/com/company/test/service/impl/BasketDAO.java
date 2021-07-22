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

import com.company.test.service.BasketDTO;
import com.company.test.service.ItemsDTO;
import com.company.test.service.TestDTO;


@Repository
public class BasketDAO  {
	
	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	
	
	public List<BasketDTO> selectList(String id) {		
		return sqlMapper.selectList("BasketSelect", id);
	}
	
	public BasketDTO shopping(Map map) {		
		return sqlMapper.selectOne("BasketShopping",map);
	}
	
	public int insert(Map map) {
		
		return sqlMapper.insert("BasketInsert", map);
	}
	
	public int delete(Map map) {
		
		return sqlMapper.delete("BasketDelete",map);
	}
	
	public int update(Map map) {
		return sqlMapper.update("CompletePayment",map);
	}
	
	public TestDTO info(String id) {
		
		return sqlMapper.selectOne("selectCustomerInfo",id);
	}
	

}
