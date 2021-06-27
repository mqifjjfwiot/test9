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
	
	//회원관련 컨트롤러 - clientPage
	//로그인페이지로
	@RequestMapping("/Login.do")
	public String Login() {
		return "Login";
	}
	
	//회원가입 메인 페이지로
	@RequestMapping("/SignUpMain.do")
	public String SignUpMain() {
		return "clientPage/SignUpMain";
	}
		
	//개인 회원가입페이지로
	@RequestMapping("/SignUpPrivate.do")
	public String SignUpPrivate() {	
		return "clientPage/SignUpPrivate";
	}
	
	//라이더 회원가입페이지로
	@RequestMapping("/SignUpRider.do")
	public String SignUpRider() {	
		return "clientPage/SignUpRider";
	}
	
	//점주 회원가입페이지로
	@RequestMapping("/SignUpMarket.do")
	public String SignUpMarket() {	
		return "clientPage/SignUpMarket";
	}
	
	//내정보 페이지로
	@RequestMapping("/MyPage.do")
	public String MyPage() {
		return "MyPage";
	}
	

	//상품관련 페이지 - productPage
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
	
	//쇼핑관련 페이지 - 
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
