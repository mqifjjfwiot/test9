package com.company.test.basket;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.company.test.service.BasketDTO;
import com.company.test.service.BasketService;
import com.company.test.service.ListPagingData;
import com.company.test.service.OneMemoDTO;
import com.company.test.service.TestDTO;
import com.fasterxml.jackson.databind.ObjectMapper;




@Controller
public class BasketController {
	
	
	@Resource(name="BasketService")
	private BasketService basketService;
		//쇼핑관련 페이지 - shoppingservice
		//장바구니 페이지로
		@RequestMapping("/Basket.do")
		public String Basket(Model model,HttpSession session) {
			String id = (String)session.getAttribute("id");
			List<BasketDTO> lists = basketService.selectList(id); 
			model.addAttribute("lists",  basketService.selectList(id));

			return "shoppingService/Basket";
		}
		
		
		
		
		//결제정보 확인 & 결제 페이지로
		@RequestMapping("/Payment.do")
		public String Payment(Model model,HttpSession session) {
			String id = (String)session.getAttribute("id");
			TestDTO member=basketService.info(id);
			model.addAttribute("member", member);
			List<BasketDTO> lists = basketService.selectList(id); 
			model.addAttribute("lists",  basketService.selectList(id));

			return "shoppingService/Payment";
		}
		
		
		//결제정보 확인 & 결제 페이지로
				@RequestMapping("/PaymentList.do")
				public String PaymentList(Model model,HttpSession session) {
					String id = (String)session.getAttribute("id");
					TestDTO member=basketService.info(id);
					model.addAttribute("member", member);
					List<BasketDTO> lists = basketService.selectPaymentList(id); 
					model.addAttribute("lists",  lists);

					return "shoppingService/PaymentList";
				}
		
		
		
		//주문/결제확인 페이지로
		@RequestMapping("/PaymentRecord.do")
		public String PaymentRecord(Model model,HttpSession session,@RequestParam Map<String, Object> param) {
			
			String id = (String)session.getAttribute("id");
			TestDTO member=basketService.info(id);
			model.addAttribute("member", member);
			List<BasketDTO> lists = basketService.selectList(id); 
			model.addAttribute("lists",  basketService.selectList(id));
			
			basketService.update(id);
			
			
			//장바구니 삭제
			//결제내역목록에 추가
			
			return "forward:/mailSender.do";
			
		}
		
		
		//마트조회 페이지로
		@RequestMapping("FindMarket.do")
		public String FindMarket() {
			return "shoppingService/FindMarket";
		}
	

}
