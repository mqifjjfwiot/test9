package com.company.test.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.test.service.ItemsDTO;
import com.company.test.service.ItemsService;
import com.company.test.service.TestDTO;

@Service("itemService")
public class ItemsServiceImpl implements ItemsService {

	@Resource(name="ItemsDAO")
	private  ItemsDAO dao;



	@Override
	public ItemsDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public ItemsDTO shopping(Map map) {
		return dao.shopping(map);
	}

	@Override
	public int insert(Map map) {		
		return dao.insert(map);
	}

	@Override
	public int delete(Map map) {		
		return dao.delete(map);
	}

	@Override
	public int update(Map map) {		
		return dao.update(map);
	}


}
