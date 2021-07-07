package com.company.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class AdminController {
	
	//메인으로
	@RequestMapping("/hom.do")
	public String hom() {
		return "hom";
	}



}
