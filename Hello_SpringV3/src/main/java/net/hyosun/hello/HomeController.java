package net.hyosun.hello;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * @keyword
 * Annotation(주석)
 * 역할 부여하는 keyword
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "home";
	}


	@RequestMapping(value = "/Korea", method = RequestMethod.POST)
	public String home(String st_num1, String st_num2, Model model) {

		int intNum1 = Integer.valueOf(st_num1);
		int intNum2 = Integer.valueOf(st_num2);
		int intSum = intNum1 + intNum2;
		model.addAttribute("result", intSum);

		return "home";
	}

	@RequestMapping(value = "/Korea")
	public String Korea(String st_name, Model model){
		model.addAttribute("result", st_name);
		return "Korea";
		
	}
}
