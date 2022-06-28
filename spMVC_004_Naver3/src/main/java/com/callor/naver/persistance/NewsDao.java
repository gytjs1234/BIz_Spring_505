package com.callor.naver.persistance;

import java.util.List;

import com.callor.naver.model.NewsVO;

public interface NewsDao extends GenericDao<NewsVO, String> {
	/*
	 * GeneridDao를 상속받음으로 해서 기본 CRUD 5개의 method는 만들지 않아도 된다
	 */
	
	
	
	//필요에 따라서 추가하기
	//기본 CRUD외에 필요한 method가 있을 경우 별도로 얼마든지 추가할수 있다.
	public List<NewsVO> findByTitle(String title);
	
	

}
