package com.company.test;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		return "clientPage/Login";
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
	
	//점장 회원가입페이지로
	@RequestMapping("/SignUpMarket.do")
	public String SignUpMarket() {	
		return "clientPage/SignUpMarket";
	}
	
	//내정보 페이지로
	

	//상품관련 페이지 - productPage
	//상품 리스트 페이지로
	@RequestMapping("/ProductList.do")
	public String ProductList() {
		return "productPage/ProductList";
	}
	
	//상품 상세 페이지로
	@RequestMapping("/ProductInfo.do")
	public String ProductInfo() {
		return "productPage/ProductInfo";
	}
	

	
	
	

	

	//QA페이지로
	@RequestMapping("/CustomerQA.do")
	public String CustomerQA() {
		return "customerService/CustomerQA";
	}
	
	
	//기타
	//공지사항 페이지로
	@RequestMapping("/Notice.do")
	public String Notice() {
		return "Notice";
	}
	
	//카테고리 페이지로
	@RequestMapping("/Category.do")
	public String Category() {
		return "Category";
	}
	@RequestMapping("/goMemberEdit.do")
	public String MemberEdit() {
		return "clientPage/SignUpEdit";
	}
	@RequestMapping("CustomerMain.do")
	public String CustomerMain() {
		return "customerService/CustomerMain";
	}
	
	
	//A마트 관련
	//a메인
	@RequestMapping("aMainpage.do")
	public String aMainpage() {
		return "aMart/aMainpage";
	}
	//a마트정보페이지
	@RequestMapping("aMartInfo.do")
	public String aMartInfo() {
		return "aMart/aMartInfo";
	}
	//a상품리스트페이지
	@RequestMapping("aMartproductPage.do")
	public String aMartproductPage() {
		return "aMart/aMartproductPage";
	}
	
	
	//테스트용(나중에삭제)
	//본인인증 기능 테스트
	@RequestMapping("/SignUpTest.do")
	public String SignUpTest() {	
		return "clientPage/SignUpTest";
	}

}
