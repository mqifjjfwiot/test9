package com.company.test.service;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestDTO {
	private String id;
	private String pwd;
	private String name;
	private String addr;
	private String tel;
	private String mail;
}
