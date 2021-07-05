package com.company.test.service.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.test.service.TestDTO;
import com.company.test.service.TestService;

@Repository
public class TestDAO  {

	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	//회원 정보 입력
	public int insertMember(TestDTO dto) {
		int result=0;
		try {
			result=sqlMapper.insert("myInsert",dto);
		}
		catch(Exception e) {
			return -2;
		}
		return result;
	}
	//중복 아이디 체크용
	public int isExistMember(TestDTO dto) {
		return sqlMapper.selectOne("myMember",dto);
	}
	//마이페이지에 뿌려줄거
	//public int 
	
}
