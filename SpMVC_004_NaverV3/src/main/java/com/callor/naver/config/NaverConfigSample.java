package com.callor.naver.config;

/*
 * Naver 媛쒕컻�옄�꽱�꽣�뿉 �벑濡앺븯怨�
 * �븷�뵆由ъ��씠�뀡�쓣 �깮�꽦�븯�뿬 遺��뿬�맂 ID�� SEC 瑜�
 * �떎�쓬�쓽 蹂��닔�뿉 �옉�꽦�븯怨� �씠 �겢�옒�뒪瑜� NaverConfig �씠由꾩쑝濡�
 * 蹂�寃쏀븳 �썑 �봽濡쒖젥�듃瑜� �떎�뻾�븯�떆�삤
 */
public class NaverConfigSample {
	
	public static final String NAVER_CLIENT_ID = "bRgcaLyiVMkuVEzF_bmy";
	public static final String NAVER_CLIENT_SEC = "uLXkcsYcoC"; 
	
	public static class HEADER {
		public static final String ID = "X-Naver-Client-Id";
		public static final String SEC = "X-Naver-Client-Secret";
	}
	
	public static final String NAVER_BOOK_URL = "https://openapi.naver.com/v1/search/book.json";
	public static final String NAVER_BOOK_XML_URL = "https://openapi.naver.com/v1/search/book.xml";
	public static final String NAVER_NEWS_URL = "https://openapi.naver.com/v1/search/news.json";
	public static final String NAVER_MOVIE_URL = "https://openapi.naver.com/";

	

}
