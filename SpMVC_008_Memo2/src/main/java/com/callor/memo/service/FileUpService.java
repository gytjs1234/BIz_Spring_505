package com.callor.memo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileUpService {
	
	public String fileup(MultipartFile file);
	public List<String>fileUp(MultipartHttpServletRequest files);
	
	//파일을 삭제하기 위한 메서드
	public void fileDelete(String fileName);
	
}
