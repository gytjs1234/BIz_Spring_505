package com.callor.naver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JacksonInject.Value;


@Controller
@RequestMapping(value = "/movies")
public class MovieController {
	
	
	@RequestMapping(value ={"/",""})
	public String home() {
		return "movies/list";
	}
	
	
	
	

}
