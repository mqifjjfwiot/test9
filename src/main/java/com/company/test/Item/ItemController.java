package com.company.test.Item;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.company.test.Item.FileUpDownUtils;
import com.company.test.Item.UploadCommand;
import com.company.test.service.ItemsService;
import com.company.test.service.TestService;

@Controller
public class ItemController {
	
	@Autowired
	private ItemsService service;
	// 메인으로
	@RequestMapping("/Item/Items.do")
	public String Items(@RequestParam int menu, Map map) {
		switch (menu) {
		case 1:
			map.put("message", "신상품");
			break;
		case 2:
			map.put("message", "행사상품");
			break;
		case 3:
			map.put("message", "육류/계란");
			break;
		case 4:
			map.put("message", "생선/어패류");
			break;
		case 5:
			map.put("message", "과일");
			break;
		case 6:
			map.put("message", "채소");
			break;
		case 7:
			map.put("message", "쌀/잡곡/견과");
			break;
		case 8:
			map.put("message", "밀키트");
			break;
		case 9:
			map.put("message", "냉동/냉장/통조림");
			break;
		case 10:
			map.put("message", "레토르트");
			break;
		case 11:
			map.put("message", "육/어육가공품");
			break;
		case 12:
			map.put("message", "김치");
			break;
		case 13:
			map.put("message", "라면/면류");
			break;
		case 14:
			map.put("message", "베이커리");
			break;
		case 15:
			map.put("message", "과자/시리얼");
			break;
		case 16:
			map.put("message", "생수");
			break;
		case 17:
			map.put("message", "주스/탄산");
			break;
		case 18:
			map.put("message", "차");
			break;
		default:
			map.put("message", "주류");
			break;
		}
		return "productPage/ProductList";
	}

	@RequestMapping("/Item/Product.do")
	public String ProductIn() {
		return "productPage/ProductInfo";
	}

	@RequestMapping("/Item/Accordian.do")
	public String Accordian() {
		return "productPage/Intro";
	}

	@Autowired
	private ObjectMapper objectMapper;

	@RequestMapping(value = "/Item/Category.do", produces = "application/json;charset=UTF-8")
	public @ResponseBody String ajaxCourse(@RequestParam String p_category) throws JsonProcessingException {

		Map map = new HashMap();
		switch (p_category) {
		case "fresh":
			map.put("meat", "육류/계란");
			map.put("fish", "생선/어패류");
			map.put("furit", "과일");
			map.put("vegetable", "채소");
			map.put("rice", "쌀/잡곡/견과");
			break;
		case "milkket":
			map.put("milkket", "밀키트");
			map.put("frozen", "냉동/냉장/통조림");
			map.put("meatfish", "육/어육가공품");
			map.put("kimchi", "김치");
			map.put("noodle", "라면/면류");
			map.put("bakery", "베이커리");
			map.put("snack", "과자/시리얼");
			break;
		default:
			map.put("water", "생수");
			map.put("juice", "주스/탄산");
			map.put("tea", "차");
			map.put("alcohol", "주류");
		}

		return objectMapper.writeValueAsString(map);
	}/////////////////

	@RequestMapping("/Item/Upload.do")
	public String upload(UploadCommand cmd, HttpServletRequest req, @RequestParam Map map) throws IllegalStateException, IOException {
		// 1]서버의 물리적 경로 얻기
		String physicalPath = req.getServletContext().getRealPath("/upload");
		MultipartFile upload = cmd.getUpload();
		// 2]File객체 생성
		// 2-1] 파일 중복시 이름 변경
		String renameFilename = FileUpDownUtils.getNewFileName(physicalPath, upload.getOriginalFilename());
		File dest = new File(physicalPath + File.separator + renameFilename);
		// 3]업로드 처리
		upload.transferTo(dest);
		// 4]리퀘스트 영역에 데이타 저장
		req.setAttribute("original", upload.getOriginalFilename());
		req.setAttribute("real", renameFilename);
		req.setAttribute("type", upload.getContentType());
		req.setAttribute("size", (int) Math.ceil(upload.getSize() / 1024.0));
		map.put("INAME",req.getParameter("INAME"));
		map.put("INAME2",req.getParameter("INAME2"));
		map.put("INAME3",req.getParameter("INAME3"));
		map.put("PRICE",req.getParameter("PRICE"));
		map.put("BRAND",req.getParameter("BRAND"));
		map.put("CATEGORY",req.getParameter("CATEGORY"));
		map.put("ID","qwerty");
		service.insert(map);
		return "productPage/UploadComplete";
	}

}