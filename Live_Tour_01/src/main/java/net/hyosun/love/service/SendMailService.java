package net.hyosun.love.service;

import net.hyosun.love.model.EmsVO;
import net.hyosun.love.model.UserVO;

public interface SendMailService {
	public void sendMail(EmsVO emsVO);

	public void sendMail(EmsVO emsVO, UserVO userVO);
}
