package com.company.test.Item;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class ItemsController {
	
	//카테고리 선택별 상품페이지 전환
	@RequestMapping("/Item/Items.do")
	public String Items(@RequestParam int menu) {
		switch(menu) {
		case 1: return "home";
		case 2: return "home";
		case 3: return "home";
		case 4: return "home";
		case 5: return "home";
		case 6: return "home";
		case 7: return "home";
		case 8: return "home";
		case 9: return "home";
		case 10: return "home";
		case 11: return "home";
		case 12: return "home";
		case 13: return "home";
		case 14: return "home";
		case 15: return "home";
		case 16: return "home";
		case 17: return "home";
		case 18: return "home";
		default: return "home";
		}
	}

}
