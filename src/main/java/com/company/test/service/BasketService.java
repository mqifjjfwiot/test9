package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface BasketService {
	//상세보기용]
	//장바구니 생성
	BasketDTO selectOne(Map map);
	//입력/수정/삭제용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	//장바구니이동용]
	BasketDTO shopping(Map map);
	
}
