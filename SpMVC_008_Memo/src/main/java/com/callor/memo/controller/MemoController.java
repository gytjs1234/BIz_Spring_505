package com.callor.memo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.model.MemoVO;
import com.callor.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/memo")
public class MemoController {

	@Autowired
	private MemoService memoService;

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute("MemoVO") MemoVO memoVO, Model model) {

		model.addAttribute(memoVO);

		return null;

	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String list(@ModelAttribute("MemoVO") MemoVO memoVO, MultipartFile file) {

		log.debug(memoVO.toString());

		int num = memoService.insert(memoVO);
		
//		String ret = memoService.insertMemoAndFile(memoVO, file);

		return "redirect:/";

	}

	@ModelAttribute("MemoVO")
	private MemoVO memVO() {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

		MemoVO memVO = MemoVO.builder().m_date(dayFormat.format(date)).m_time(timeFormat.format(date))
				.m_author("hyosun").build();
		return memVO;
	}

	@RequestMapping(value = "/{m_seq}/detail", method = RequestMethod.GET)
	public String detail(@PathVariable("m_seq") String m_seq, Model model) {
		MemoVO memoVO = memoService.findById(m_seq);
		model.addAttribute("MEMO", memoVO);

		return "memo/detail";
	}

	@RequestMapping(value = "/{m_seq}/update", method = RequestMethod.GET)
	public String update(@PathVariable("m_seq") String m_seq, Model model) {

		MemoVO memoVO = memoService.findById(m_seq);
		model.addAttribute("MEMO", memoVO);

		return "memo/insert";

	}

	@RequestMapping(value = "/{m_seq}/update", method = RequestMethod.POST)
	public String update(MemoVO memoVO) {

		int ret = memoService.update(memoVO);

		String retStr = String.format("redirect:/memo/%s/detail", memoVO.getM_seq());
		return retStr;
	}

	@RequestMapping(value = "/{m_seq}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable("m_seq") String m_seq) {
		int ret = memoService.delete(m_seq);
		return "redirect:/";
	}

}
