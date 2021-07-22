package com.company.test.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.test.service.ListPagingData;
import com.company.test.service.TestDTO;
import com.company.test.service.TestService;
@SessionAttributes("id")
@Controller
public class TestController {
	
	@Autowired
	private TestService service;
	@RequestMapping(value="/join.do",method = RequestMethod.POST)
	public String join(TestDTO dto,Model model,@RequestParam Map map) {
		//dto.setMail(map.get("mail").toString()+"@"+map.get("mailEnd"));
		int result=service.insertMember(dto);
		if(result ==-1) {
			model.addAttribute("message", "이미 중복된 아이디가 있어요");
			return "clientPage/SignUpPrivate";
		}
		else if(result ==-2) {
			model.addAttribute("message", "회원가입에 실패했습니다");
			return "clientPage/SignUpPrivate";
		}
		else if(!(map.get("pwdCheck").equals(map.get("pwd")))) {
			model.addAttribute("different","비밀번호가 일치하지않습니다");
		}
		return "clientPage/Login";
	}
	@RequestMapping("/MyPage.do")
	public String MyPage(TestDTO dto,@RequestParam Map map,HttpSession session) {
		
		return "clientPage/MyPage";
	}
	@RequestMapping("/memberEdit.do")
	public String MemberEdit(TestDTO dto,@RequestParam Map map,HttpSession session,Model model) {
		int result = service.updateMember(dto);
		if(result == 1){
			return "clientPage/Login";
		}
		else if(!(map.get("pwdCheck").equals(map.get("pwd")))){
			model.addAttribute("different","비밀번호가 일치하지않습니다");
			return "forward:/";
		}
		else {
			model.addAttribute("message","회원정보 수정에 실패했습니다");
			return "forward:/";
		}
	}
	@ExceptionHandler({HttpSessionRequiredException.class})
	public String notLogin(HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<script language='javascript'>");
		out.println("alert('로그인 후 이용하세요');");
		out.println("</script>");
		out.flush();
		//로그인이 안된경우 로그인 페이지로
		return "clientPage/Login";
	}
	
	@RequestMapping(value = "Write.do",method = RequestMethod.GET)
	public String write( @ModelAttribute("id") String id) {
		//뷰정보 반환]
		return "customerService/Write";
	}/////////////
	//입력처리]
	@RequestMapping(value = "Write.do",method = RequestMethod.POST)
	public String writeoK(
			@ModelAttribute("id") String id,
			@RequestParam Map map) {
		map.put("id", id);
		service.insert(map);		
		return "forward:/CustomerBoard.do";
	}
	
	@RequestMapping("/CustomerBoard.do")
	public String list(
			@RequestParam Map map,
			@RequestParam(required = false,defaultValue = "1") int nowPage,
			HttpServletRequest req,
			Model model) {
		ListPagingData listPagingData= service.selectList(map,req,nowPage);
		model.addAttribute("listPagingData", listPagingData);
		return "customerService/CustomerBoard";
	}
	//
	@RequestMapping("/memberlist.do")
	public String memberlist(
			@RequestParam Map map,
			@RequestParam(required = false,defaultValue = "1") int nowPage,
			HttpServletRequest req,
			Model model) {
		ListPagingData listPagingData= service.selectMemberList(map,req,nowPage);
		model.addAttribute("listPagingData", listPagingData);
		return "admin/members";
	}
	@RequestMapping("View.do")
	public String view(
			@ModelAttribute("id") String id,
			@RequestParam Map map,Model model) {
		//서비스 호출]
		TestDTO record=service.selectOne(map);
		//데이타 저장]
		//줄바꿈 처리
		record.setBcontent(record.getBcontent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		//List<LineCommentDTO> comments=record.getComments();
		
		//뷰정보 반환]
		return "customerService/View";
	}
	@RequestMapping("/Delete.do")
	public String delete(@RequestParam Map map) {
		//서비스 호출
		service.delete(map);
		//뷰정보 반환]
		return "forward:/CustomerBoard.do";
	}
	@RequestMapping("Edit.do")
	public String edit(HttpServletRequest req,@RequestParam Map map,Authentication auth) {
		if(req.getMethod().equals("GET")) {
			//서비스 호출]
			TestDTO record=service.selectOne(map);
			//데이타 저장]
			if(record.getBcontent().startsWith("<p>")) {
				record.setBcontent(record.getBcontent().substring(3,record.getBcontent().indexOf("</p>") ));
			}
			//record.setSno(record.getSno().substring(3,record.getSno().indexOf("</p>") ));
			req.setAttribute("record", record);
			//수정 폼으로 이동]
			return "customerService/Edit";
		}
		//수정처리후 상세보기로 이동
		//서비스 호출
		service.update(map);
		//뷰로 포워드
		return "forward:/View.do";
		
		
	}
	
}
