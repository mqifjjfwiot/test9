package com.company.test.service;

import java.io.File;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BasketDTO {
	private String INO;
	private String INAME;
	private String INAME2;
	private String INAME3;
	private String PRICE;
	private String CATEGORY;
	private String STOCK;
	private String DISH;
	private String HASHTAG;
	private String BRAND;
	private File IMAGE;
	private File IMAGE2;
	private File IPAGE;
	private File IPAGE2;
	
}
