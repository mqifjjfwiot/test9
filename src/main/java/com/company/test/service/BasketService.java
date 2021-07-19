package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface BasketService {
	//상세보기용]
	//장바구니 리스트 뿌려주기
	List<Map<String,String>> selectList(Map map);
	//입력/수정/삭제용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	//구매자 정보 조회
	Map info(String id);
	

	
	
}
