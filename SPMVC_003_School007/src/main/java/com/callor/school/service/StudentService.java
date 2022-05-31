package com.callor.school.service;

import com.callor.school.model.StudentVO;
import com.callor.school.pesistance.GenericDao;


/*
 * Dao 와 Service interface 에서 공통으로 구현할 interface를 만든다
 * 
 * 이 interface 는 2개의 Generic Type을 갖는다
 * 일단 Vo와 pk라는 이름으로 Generic type을 선언해 두었다
 * 
 * 이 interface를 상속하는 Dao나 Serivce interface에서 자신이 사용할 VO클래스
 * 타입과 PK데이터 타입을 지정하여 준다
 * 
 * 이Generic Interface를 사용함으로 써  Dao 나 Service interface에서는 공통으로 구현할
 *  method를 다시 작성하는 수고를 덜 수 있다
 */
public interface StudentService extends GenericDao<StudentVO, String>{

	
}
