package com.company.test.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	@RequestMapping("/Write.do")
	public String Write(@ModelAttribute("id") String id) {
		
		return "customerService/Write";
	}
	
	
	
}
