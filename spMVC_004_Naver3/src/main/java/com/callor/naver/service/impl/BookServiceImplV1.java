package com.callor.naver.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.naver.config.QualifierConfig;
import com.callor.naver.model.BookVO;
import com.callor.naver.persistance.BookDao;
import com.callor.naver.service.BookService;

/*
 * bookServiceV1
 * BookService interface를 상속받은 클래스가 다수 있을때 Controller에서 어떤 클래스를 지금
 * 연결하여 사용 할 것인가의 문재가 발생한다.
 * 
 * 그럴때 @Service Annotation이름(식별자)을 부착하여 두고 클래스 중에서 필요한 부분을 
 * 선택할 수 있도록 하기위하여 부착하는 것
 */
@Service(QualifierConfig.SERVICE.BOOKS_V1)
public class BookServiceImplV1 implements BookService {

	@Autowired
	private BookDao bookDao;
//	public BookServiceImplV1(BookDao bookDao) {
//		this.bookDao =bookDao;
//	}

	@Override
	public List<BookVO> selectAll() {
		List<BookVO> booklist = bookDao.selectAll();
		return booklist;
	}

	@Override
	public BookVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(BookVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(BookVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BookVO> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookVO> findByAuthor(String author) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookVO> findByPublisher(String publisher) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookVO> findByPrice(int price) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookVO save(BookVO bookVO) {
		bookDao.insert(bookVO);
		
		return null;
	}

}
