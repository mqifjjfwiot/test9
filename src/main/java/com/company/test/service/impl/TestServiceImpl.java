package com.company.test.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.test.service.ListPagingData;
import com.company.test.service.OneMemoDTO;
import com.company.test.service.PagingUtil;
import com.company.test.service.TestDTO;
import com.company.test.service.TestService;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private TestDAO dao;
	//@Value("${PAGE_SIZE}")
	private int pageSize = 10;
	//@Value("${BLOCK_PAGE}")
	private int blockPage = 10;
	@Override
	public int insertMember(TestDTO dto) {	
		//1.회원아이디 중복 체크
		int count=dao.isExistMember(dto);
		//2.중복 아이디가 아니면 insert ,중복이면 -1반환
		if(count ==1) return -1;	
		
		return dao.insertMember(dto);
	}///
	@Override
	public int updateMember(TestDTO dto) {
		
		return dao.memberUpdate(dto);
	}
	@Override
	public ListPagingData<TestDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount=dao.getTotalRecord(map);		
		int totalPage =(int)Math.ceil((double)totalRecordCount/pageSize);		
		int start = (nowPage -1)*pageSize+1;
		int end = nowPage * pageSize;	
		map.put("start", start);
		map.put("end", end);
		List lists=dao.selectList(map);		
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/OneMemo/BBS/List.do?");
		
		ListPagingData<TestDTO> listPagingData = 
				ListPagingData.builder()
					.lists(lists)
					.nowPage(nowPage)
					.pageSize(pageSize)
					.pagingString(pagingString)
					.TotalRecordCount(totalRecordCount)
					.build();
		
		return listPagingData;
	}

}
