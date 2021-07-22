package com.company.test.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.test.service.OneMemoDTO;
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
			System.out.println(e.getMessage());
			return -2;
		}
		return result;
	}
	//중복 아이디 체크용
	public int isExistMember(TestDTO dto) {
		return sqlMapper.selectOne("myMemberCnt",dto);
	}
	public int memberUpdate(TestDTO dto) {
		return sqlMapper.update("memberUpdate", dto);
	}
	
	public List<TestDTO> selectList(Map map) {
		return sqlMapper.selectList("memoSelectList",map);
	}
	public List<TestDTO> selectMemberList(Map map) {
		return sqlMapper.selectList("memberSelectList",map);
	}

	
	public int getTotalRecord(Map map) {
		
		return sqlMapper.selectOne("memoTotalCount",map);
	}
	public TestDTO selectOne(Map map) {		
		return sqlMapper.selectOne("memoSelectOne", map);
	}
	public int insert(Map map) {
		return sqlMapper.insert("memoInsert", map);
	}
	public int delete(Map map) {
		return sqlMapper.delete("memoDelete",map);
	}
	public int update(Map map) {		
		return sqlMapper.update("memoUpdate",map);
	}
	
}
