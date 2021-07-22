package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface BasketService {
	//상세보기용]
	//장바구니 리스트 뿌려주기
	List<BasketDTO> selectList(String id);
	//입력/수정/삭제용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	//구매자 정보 조회
	TestDTO info(String id);
	

	
	
}
