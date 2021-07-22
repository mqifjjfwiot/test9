package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ItemsService {
	//상세보기로 이동용]
	ItemsDTO selectOne(Map map);
	//상품 등록/삭제/수정용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	//장바구니로 이동용]
	ItemsDTO shopping(Map map);
	
}
