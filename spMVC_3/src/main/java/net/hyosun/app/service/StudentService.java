package net.hyosun.app.service;

import org.springframework.stereotype.Service;

import net.hyosun.app.domain.StudentVO;
//지금부터 서비스클래스라고 알려주는의미
@Service
public interface StudentService {
	
//TODO 학생데이터를추가하기
	public int insert(StudentVO studentVO); //데이터추가

//TODO 전체데이터를 가져오기
	public StudentVO[] selectAll();//학생배열로 리턴하는 메서드 전체리스트 가져오기	
//TODO 학생 데이터 ID로 조회하기
	public StudentVO findeById(String stNum); //특정 한개의 데이터만 가져오기
}
