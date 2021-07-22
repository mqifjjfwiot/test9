package com.company.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface TestService {
	ListPagingData<TestDTO> selectList(Map map,HttpServletRequest req,int nowPage);
	ListPagingData<TestDTO> selectMemberList(Map map,HttpServletRequest req,int nowPage);
	//회원가입
	int getTotalRecord(Map map);
	TestDTO selectOne(Map map);
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	
	int deleteMember(Map map);
	int insertMember(TestDTO dto);
	int updateMember(TestDTO dto);
	//글 작성
}
