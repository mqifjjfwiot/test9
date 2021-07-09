package com.company.test.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.test.service.TestDTO;
import com.company.test.service.TestService;

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
	
	
	
}
