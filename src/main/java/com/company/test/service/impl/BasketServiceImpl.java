package com.company.test.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.test.service.BasketDTO;
import com.company.test.service.BasketService;
import com.company.test.service.ItemsDTO;
import com.company.test.service.ItemsService;
import com.company.test.service.TestDTO;

@Service("BasketService")
public class BasketServiceImpl implements BasketService {

	@Autowired
	private  BasketDAO dao;

	@Override
	public List<BasketDTO> selectList(Map map) {
		
		//dto 객체로 리턴해주고 포이치로 + 루프로 웹페이지에서 뿌려버리기
		//게시판 로직 참고 
		

		return dao.selectList(map);
	}
		
	/*					성공					실패
	 insert() 	null  				e 에러
	update() 	 1						0
	delete()	삭제된 row수		0

	 */
	
	  @Override 
	  public int insert(Map map) { 
		  map.put("id", "1234");//임시
		  map.put("ino", "1");//임시
		  return  dao.insert(map); 
	  }
	  
	  @Override public int delete(Map map) { 
		  map.put("id", "1234");//임시
		  map.put("ino", "1");//임시
		  return dao.delete(map); 
	 }


	@Override
	public int update(Map map) {
		
		map.put("id", "1234");//임시
		return dao.update(map);
	}
	 
	@Override
	public TestDTO info(String id) {
		
		
		return dao.info(id);
	}

	

	

	


}
