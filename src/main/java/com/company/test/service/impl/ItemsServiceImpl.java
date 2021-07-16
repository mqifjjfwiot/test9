package com.company.test.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.test.service.ItemsDTO;
import com.company.test.service.ItemsService;
import com.company.test.service.TestDTO;

@Service("itemService")
public class ItemsServiceImpl implements ItemsService {

	@Autowired
	private  ItemsDAO dao;



	@Override
	public ItemsDTO selectOne(ItemsDTO dto) {
		return dao.selectOne(dto);
	}

	@Override
	public ItemsDTO shopping(ItemsDTO dto) {
		return dao.shopping(dto);
	}

	@Override
	public int insert(ItemsDTO dto) {		
		return dao.insert(dto);
	}

	@Override
	public int delete(ItemsDTO dto) {		
		return dao.delete(dto);
	}

	@Override
	public int update(ItemsDTO dto) {		
		return dao.update(dto);
	}


}
