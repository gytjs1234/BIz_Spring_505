package com.callor.naver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/news")
public class NewsController {
	
	
	public String home() {
		return "news/list";
	}
	
	
	
	@RequestMapping(value = "/list")
	public String news() {
		return null;
	}

}
