package com.company.test.Item;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class ItemController {
	
	//메인으로
	@RequestMapping("/Item/Items.do")
	public String Items(@RequestParam int menu,Map map) {
		switch(menu) {
		case 1: map.put("message", "신상품");break;
		case 2: map.put("message", "행사상품");break;
		case 3: map.put("message", "육류/계란");break;
		case 4: map.put("message", "생선/어패류");break;
		case 5: map.put("message", "과일");break;
		case 6: map.put("message", "채소");break;
		case 7: map.put("message", "쌀/잡곡/견과");break;
		case 8: map.put("message", "밀키트");break;
		case 9: map.put("message", "냉동/냉장/통조림");break;
		case 10: map.put("message", "레토르트");break;
		case 11: map.put("message", "육/어육가공품");break;
		case 12: map.put("message", "김치");break;
		case 13: map.put("message", "라면/면류");break;
		case 14: map.put("message", "베이커리");break;
		case 15: map.put("message", "과자/시리얼");break;
		case 16: map.put("message", "생수");break;
		case 17: map.put("message", "주스/탄산");break;
		case 18: map.put("message", "차");break;
		default : map.put("message", "주류");break; 
		}
		return "ProductPage";
	}

}
