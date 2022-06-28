package com.callor.ems.service;

import com.callor.ems.model.EmsVO;
import com.callor.ems.model.UserVO;

public interface SendMailService {
	
	//네이버를통해서 이메일을 전송할 메서드
	public void sendMail(EmsVO emsVO);
	public void sendMail(EmsVO emsVO,UserVO userVO);

}
