package com.company.test.basket;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.test.service.BasketService;
import com.company.test.service.TestDTO;
import com.fasterxml.jackson.databind.ObjectMapper;




@Controller
public class BasketController {
	
	
	@Resource(name="BasketService")
	private BasketService basketService;
		//쇼핑관련 페이지 - shoppingservice
		//장바구니 페이지로
		@RequestMapping("/Basket.do")
		public String Basket(Map map,Model model) {
			
			map.put("id", "1234");//임시
			
			List lists = basketService.selectList(map); 
			model.addAttribute("lists", lists);
			System.out.println("리스트:"+lists);
			return "shoppingService/Basket";
		}
		
		
		
		
		//결제정보 확인 & 결제 페이지로
		@RequestMapping("/Payment.do")
		public String Payment(Model model) {
			String id = "1234";//임시, 원래는 세션 id값 받아와야함 
			Map member=basketService.info(id);
			model.addAttribute("member", member);
			
			System.out.println("member : "+member);
			return "shoppingService/Payment";
		}
		
		
		
		
		//주문/결제확인 페이지로
		@RequestMapping("/PaymentRecord.do")
		public String PaymentRecord() {
			
			return "forward:/mailSender.do";
		}
	

}
