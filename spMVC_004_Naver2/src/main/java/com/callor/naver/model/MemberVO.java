package com.callor.naver.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberVO {
	
	
	private String username;
	private String password;
	private String name; //본인의 이름
	private String nickname;
	private String tel;
	private String role;

}
