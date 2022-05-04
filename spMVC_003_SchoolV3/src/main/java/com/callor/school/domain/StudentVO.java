package com.callor.school.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter  //메서드
@Setter	//메서드
@AllArgsConstructor //임의생성자(필드)
@NoArgsConstructor //기본생성자
@ToString  //재정의
@Builder  //
public class StudentVO {

		private String stNum; // 학번
		private String stName;// 이름
		private int intGrade;// 학년
		private String stTel;// 전화번호
		private String stAddr;// 주소
		private String stDept;// 학과
		
		

}
