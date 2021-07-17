package com.company.test.service;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestDTO {
	private String no;
	private String id;
	private String pwd;
	private String tel;
	private String name;
	private String addr;
	private String mail;
	private String bono;
	private Date regDate;
	private String sno;
	private String bcontent;
	private java.sql.Date postDate;
	//private java.sql.Date bDate;
	private String commentCount;
	
}
