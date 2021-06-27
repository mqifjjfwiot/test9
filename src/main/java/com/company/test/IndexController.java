package com.company.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class IndexController {
	
	//메인으로
	@RequestMapping("/home.do")
	public String home() {
		return "home";
	}
	
	
	//로그인페이지로
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
		

		
		
	//개인회원가입페이지로
	@RequestMapping("/joinprivate.do")
	public String join() {
		
		return "joinprivate";
	}
	
	//회원가입종류 선택 페이지로
	@RequestMapping("/joins.do")
	public String joins() {
		return "Joins";
	}
	
	//상품 페이지로
	@RequestMapping("/list.do")
	public String list() {
		return "list";
	}
	
	//상품 상세 페이지로
	@RequestMapping("/listinfo.do")
	public String listinfo() {
		return "listinfo";
	}
	
	//장바구니 페이지로
	@RequestMapping("/basket.do")
	public String basket() {
		return "basket";
	}
	
	//결제 페이지로
	@RequestMapping("/pay.do")
	public String pay() {
		return "pay";
	}
	
	//주문/결제확인 페이지로
	@RequestMapping("/shoppringrecord.do")
	public String shoppringrecord() {
		return "shoppringrecord";
	}
	
	//고객센터 선택 페이지로
	@RequestMapping("/Questions.do")
	public String Questions() {
		return "Questions";
	}
	
	
	//고객센터게시판으로
	@RequestMapping("/Customer.do")
	public String Customer() {
		return "Customer";
	}
		
	//공지사항 페이지로
	@RequestMapping("/notice.do")
	public String notice() {
		return "Notice";
	}
	
	//QA페이지로
	@RequestMapping("/QA.do")
	public String QA() {
		return "manager/Customer";
	}
	
	//카테고리 페이지로
	@RequestMapping("/Category.do")
	public String Category() {
		return "Category";
	}

}
