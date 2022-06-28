package com.callor.naver.service;

import java.util.List;

import com.callor.naver.model.BookVO;


public interface BookService_test {
	public List<BookVO> selectAll();

	public BookVO findByNum(String Num); // read

	public Integer insert(BookVO stVO); // create

	public Integer update(BookVO VO);

	public Integer delete(String Num);// id ,pKey

	
	
	
	
	
	public List<BookVO> findByStTel(String stTel);

	public List<BookVO> findByStName(String stName);

	public List<BookVO> findByStAddr(String stAddr);

}// CRUD 메서드 CreateReadUpdateDelete 4가지 기본오소



