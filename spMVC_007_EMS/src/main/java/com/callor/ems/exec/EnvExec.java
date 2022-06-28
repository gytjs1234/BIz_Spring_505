package com.callor.ems.exec;

import java.util.Map;

public class EnvExec {
	public static void main(String[] args) {
		
		//설정한 환경변수를 확인해보는 코드 
		Map<String ,String>envList =System.getenv();
		String naverPass =envList.get("NAVER");
		System.out.println(naverPass);
		
	}

}
