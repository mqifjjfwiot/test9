package com.company.test;

import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

	/** 자바 메일 발송 
	 * @throws MessagingException 
	 * @throws AddressException **/
	@RequestMapping("/mailSender")
	public String mailSender(HttpServletRequest request, ModelMap mo) throws AddressException, MessagingException {
		
		// 네이버일 경우 smtp.naver.com 을 입력합니다.
		// Google일 경우 smtp.gmail.com 을 입력합니다.
		String host = "smtp.gmail.com";
		
		final String username = "sjwonsj00";       //구글 아이디를 입력해주세요. @nave.com은 입력하지 마시구요.
		final String password = "hutwuldjsmlfabfw";   //구글 이메일 비밀번호를 입력해주세요.
		int port=465; //포트번호
		 
		// 메일 내용
		String recipient = "sjwonsj94@gmail.com";    //받는 사람의 메일주소를 입력해주세요.
		String subject = "메일테스트"; 					  //메일 제목 입력해주세요.
		String body = username+"님으로 부터 메일을 받았습니다."; //메일 내용 입력해주세요.
		 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성
		 
		// SMTP 서버 정보 설정
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		   
		//Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un=username;
			String pw=password;
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); //for debug
		   
		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성
		mimeMessage.setFrom(new InternetAddress("sjwonsj00@gmail.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요.
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음


		mimeMessage.setSubject(subject);  //제목셋팅
		mimeMessage.setText(body);        //내용셋팅
		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
		return "shoppingService/PaymentRecord";
		
	}
}
