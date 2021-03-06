package com.company.test.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.test.service.OneMemoService;
import com.company.test.service.TestDTO;
import com.company.test.service.TestService;
import com.company.test.service.impl.TestServiceImpl;


@Controller
public class AuthController {
	
	
	@Resource(name="memoService")
	private OneMemoService memoService;
	
	//로그인 처리]
	@RequestMapping("LoginProcess.do")
	public String process(@RequestParam Map map,Model model,HttpSession session) {
		boolean flag=memoService.isLogin(map);
		TestDTO dto = memoService.getMemberInfo(map.get("id").toString());
		
		if(flag) {
			session.setAttribute("id", dto.getId());
			session.setAttribute("tel", dto.getTel());
			session.setAttribute("name", dto.getName());
			session.setAttribute("mail", dto.getMail());
			session.setAttribute("addr", dto.getAddr());
			return "home";
		}
		else {
			model.addAttribute("NotMember", "가입한 회원이 아니거나 비밀번호가 일치하지 않습니다");
			return "clientPage/Login";
		}
	}
	
	@RequestMapping("Logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
	
}
