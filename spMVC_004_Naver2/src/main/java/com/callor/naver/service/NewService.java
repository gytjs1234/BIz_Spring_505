package com.callor.naver.service;

import com.callor.naver.persistance.NewsDao;

/*
 * Serviced 의 기능도 기본적으로 Dao와 같이 5가지 CRUD가 필요하고
 * 경우에 따라 별도의 method가 추가될수 있다.
 * 
 * Service도 GenericDao를 상속받아 사용할수 있다.
 * 하지만 NewsDao에 새롭게 추가한 method가 있는데
 * GenericDao를 상속받으면 새롭게 추가한 method를 다시 작성해야한다.
 * 이럴때는 GenericDao대신 NewsDao를 상속받는다
 */
public interface NewService extends NewsDao{
	
	
	
	
	

}
