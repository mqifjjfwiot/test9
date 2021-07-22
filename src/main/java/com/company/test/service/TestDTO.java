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
	private String title;
	private String bcontent;
	private java.sql.Date postDate;
	//private java.sql.Date bDate;
	private String commentCount;
	private Date birth;
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
}
