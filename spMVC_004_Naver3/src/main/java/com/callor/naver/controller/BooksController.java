package com.callor.naver.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.naver.config.QualifierConfig;
import com.callor.naver.model.BookVO;
import com.callor.naver.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/books")
public class BooksController {
	private final BookService bookService;

	public BooksController(@Qualifier(QualifierConfig.SERVICE.BOOKS_V1) BookService bookService) {

		this.bookService = bookService;
		// TODO Auto-generated constructor stub
	}

	/*
	 * 
	 */
	@RequestMapping(value = { "/", "" })
	public String home() {
		return "books/list";
	}

	@RequestMapping(value = "/list")
	public String list(Model model) {
		/*
		 * 암시적으로 어떤 jsp파일을 랜더링 할것인지 알려주는 것이다 현재 method요청한 URL이 명시적으로 명확할 경우 null을
		 * return하면 Spring에서 자체적으로 폴더/파일 형식을오 구성을 하여준다
		 */
		List<BookVO> list = bookService.selectAll();
		model.addAttribute("LAYOUT", "BOOK_LIST");
		
		// bookList 에 담긴 데이터를 BOOKS 이름으로 변수에 담아
		// jsp 파일로 보내겠다.
		model.addAttribute("BOOK_LIST",list);
		return "books/list";

	}
	/*
	 * RequestMethod가 없는 Mapping은 GET요청이나 POST 요청을 모두 처리하는 method가 되어버린다.
	 * 
	 * method=RequsetMethod.GET 로 지정을 하면 a tag link를 눌렀을때의 요청만 처리되도록 역할을 제한한다.
	 * 
	 */
	
	
	@RequestMapping(value = "/insert",method=RequestMethod.GET)
	public String insert(){
		return  null;
	}
	@RequestMapping(value = "/detail",method=RequestMethod.GET)
	public String detail(){
		return  null;
	}
	
	/*
	 * home tag에 method=POST 가 부착된 form으로 감싼 데이터들이 전송되었을때
	 * 요청을 받아 처리할 method
	 */
	@RequestMapping(value = "/insert",method=RequestMethod.POST)
	public String insert(BookVO bookVO){
		log.debug("도서정보:"+bookVO.toString());
		
		bookService.save(bookVO);
		return  null;
	}

}
