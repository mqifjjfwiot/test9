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
	private Date regDate;
}
