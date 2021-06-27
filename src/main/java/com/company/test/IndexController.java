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
	
	

	
	//상품 상세 페이지로
	@RequestMapping("/listinfo.do")
	public String listinfo() {
		return "listinfo";
	}
	
	//장바구니 페이지로
	@RequestMapping("/basket.do")
	public String basket() {
		return "Basket";
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
	
	//공지사항 페이지로
	@RequestMapping("/notice.do")
	public String notice() {
		return "Notice";
	}
	
	
	//고객센터 관련
	//고객센터 메인 페이지로
	@RequestMapping("/CustomerMain.do")
	public String CustomerMain() {
		return "customerService/CustomerMain";
	}

	//QA페이지로
	@RequestMapping("/CustomerQA.do")
	public String CustomerQA() {
		return "customerService/CustomerQA";
	}
	
	//고객문의게시판으로
	@RequestMapping("/CustomerBoard.do")
	public String CustomerBoard() {
		return "customerService/CustomerBoard";
	}
	
	
	
	//카테고리 페이지로
	@RequestMapping("/Category.do")
	public String Category() {
		return "Category";
	}

}
