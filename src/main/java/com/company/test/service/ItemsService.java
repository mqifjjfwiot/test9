package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ItemsService {
	//상세보기용]
	ItemsDTO selectOne(ItemsDTO dto);
	//입력/수정/삭제용]
	int insert(ItemsDTO dto);
	int delete(ItemsDTO dto);
	int update(ItemsDTO dto);
	//장바구니이동용]
	ItemsDTO shopping(ItemsDTO dto);
	
}
