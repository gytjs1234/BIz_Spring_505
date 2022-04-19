package net.hyosun.hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.hyosun.hello.domain.ScoreVO;

@Controller
public class ScoreController {
	@ResponseBody  //이게없으면 "home".jsp 파일을 리턴한다. 있으면 home이라는 문자열을 리턴한다.
	@RequestMapping(value="/print") //   /print를 요청하라
	public String printScore(){
		int intKor=100;
		int intEng=100;
		int intSum =intKor+intEng;
		return intSum+ "";
		
	}
//	@RequestMapping(value="/score",method=RequestMethod.GET)
//	
//	public String score() {
//		
//		return "score";
//	}
	
	@RequestMapping(value = "/score",method = RequestMethod.POST)
	public String score(ScoreVO scoreVO,Model model) {
		model.addAttribute("SCORE", scoreVO);
		return "Score";
	}

}
