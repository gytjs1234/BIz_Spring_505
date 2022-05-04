package com.callor.school.service;

import java.util.List;

import com.callor.school.domain.StudentVO;

public interface StudentService {
	/*
	 * CRUD method의 prototype선언 C(Create insert):새러운 데이터 추가
	 * R(read,selectAll,findBtStNum):데이터 읽기 U(update,update):기존 데이터 변경
	 * D(delete,delete):기존 데이터 중 삭제
	 * 
	 */
	public List<StudentVO> selectAll();

	public StudentVO findByStNum(String stNum); // read

	public Integer insert(StudentVO stVO); // create

	public Integer update(StudentVO stVO);

	public Integer delete(String stNum);// id ,pKey

	
	
	
	
	
	public List<StudentVO> findByStTel(String stTel);

	public List<StudentVO> findByStName(String stName);

	public List<StudentVO> findByStAddr(String stAddr);

}// CRUD 메서드 CreateReadUpdateDelete 4가지 기본오소
