package com.callor.school.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.callor.school.dao.StudentDao;
import com.callor.school.model.StudentVO;
import com.callor.school.service.StudentService;

import lombok.extern.slf4j.Slf4j;

//StudentServiceImplV1이름이 길어서 "stService"이걸쓰겠다


/*
 * StudentService stService = new StudentServiceImplV1();
 */

//"stService"라는 빈을 만들어서 준비해달라	


/*
 *생성자 주입
 */
@Slf4j
@Service("stServiceV1")
public class StudentServiceImplV1 implements StudentService {

	private final StudentDao stDao;

	public StudentServiceImplV1(StudentDao stDao) {
		this.stDao = stDao;
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<StudentVO> selectAll() {
		// TODO Auto-generated method stub
		return stDao.selectAll();
	}

	@Override
	public StudentVO findByNum(String st_num) {
		// TODO Auto-generated method stub
		return stDao.findByNum(st_num);
	}

	@Override
	public int insert(StudentVO stVO) {
		int count = stDao.insert(stVO);
		return 0;
	}

	@Override
	public int update(StudentVO stVO) {
		int count = stDao.update(stVO);
		return count;
	}

	@Override
	public int delete(String st_num) {
		int count = stDao.delete(st_num);
		return count;
	}

}
