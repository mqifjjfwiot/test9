package com.company.test.Item;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UploadCommand {
	private String writer;
	private String title;
	private MultipartFile  upload;//※ input type="file"는 MultipartFile타입으로]	
}

