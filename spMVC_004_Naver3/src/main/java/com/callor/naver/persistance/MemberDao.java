package com.callor.naver.persistance;

import java.util.List;

import com.callor.naver.model.MemberVO;

public interface MemberDao extends GenericDao<MemberVO, String>{
	
	
	public List<MemberVO>findByName(String name);
	public List<MemberVO>findByTel(String tel);
	/*
	 * list가 아닌 VO를 return type으로 갖는 findByEmail method구현
	 * 이 method가 잘 작동이 되기 위해서는 Entity 설계를 할때 email칼럼은 반드시
	 * UNIQUE설정이 되어있어야한다 좀더 정확한 설정을 위하여 NOT NULL설정도 같이 하는것이 좋다.
	 */
	public MemberVO findByemail(String email);
	/*
	 * 회원이 ID찾기 기능을 위하여 전화번호와 email을 사용하여 username을 조회할수 있는method
	 * 
	 * Entity설계를 할때 UNIQUE(email,tel) 형식으로 제약조건을 설정할 필요가 있다
	 * email+tel형식의 값이 절대 중복되지 않아야한다.
	 */
	public MemberVO findByEmailAndTel(String email,String tel);
	
	

}
