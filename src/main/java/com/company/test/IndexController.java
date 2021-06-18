package com.company.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class IndexController {
	
	//메인으로
	@RequestMapping("/mainpage.do")
	public String mainpage() {
		
		return "mainpage";
	}
	
	
	//로그인페이지로
	@RequestMapping("/login.do")
	public String login() {
		
		return "login";
	}
		
	//고객센터페이지로
	@RequestMapping("/customerCenter.do")
	public String customerCenter() {
			
		return "page/CustomerCenter";
	}
		
	//컨텐츠페이지01
	@RequestMapping("/content01.do")
	public String content01() {
		
		return "page/Content01";
	}
		
		
	//회원가입페이지로
	@RequestMapping("/joinProcess.do")
	public String join() {
		
		return "page/Join";
	}
	
	//컨트롤러 메소드]
	@RequestMapping("/list.do")
	public String bbs() {
		return "list";
	}


}
